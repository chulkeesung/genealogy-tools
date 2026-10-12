#!/usr/bin/env bash
# Publish a new version of one tool, keep only the current and previous
# versions, and update the download links in README.md.
#
# Usage: scripts/release.sh <transliterator|year-calculator> <version> <file>...
# Example: scripts/release.sh transliterator 1.2.0 ~/builds/Translit.exe ~/builds/app-release.apk
#
# Files are renamed by type:
#   .exe -> <tool>-<version>-windows-x64.exe
#   .apk -> <tool>-<version>-android.apk
set -euo pipefail

REPO="chulkeesung/genealogy-tools"
OWNER="chulkeesung"
KEEP=2
TOOLS=(transliterator year-calculator)

tool_title() {
  case "$1" in
    transliterator) echo "Transliterator" ;;
    year-calculator) echo "Year Calculator" ;;
  esac
}

# Release tags for a tool, newest first.
tool_tags() {
  gh release list --repo "$REPO" --limit 200 --json tagName,createdAt \
    --jq "[.[] | select(.tagName | startswith(\"$1-v\"))] | sort_by(.createdAt) | reverse | .[].tagName"
}

download_cell() { # <tag> <extension> <label>
  local name
  name=$(gh release view "$1" --repo "$REPO" --json assets \
    --jq ".assets[].name | select(endswith(\"$2\"))" | head -1)
  if [[ -n "$name" ]]; then
    echo "[Download $3](https://github.com/$REPO/releases/download/$1/$name)"
  else
    echo "Coming soon"
  fi
}

update_readme() {
  local table previous="" tag prev ver
  table=$'| | Windows | Android | iPhone |\n|---|---|---|---|'
  for t in "${TOOLS[@]}"; do
    tag=$(tool_tags "$t" | sed -n 1p)
    prev=$(tool_tags "$t" | sed -n 2p)
    if [[ -n "$tag" ]]; then
      ver=${tag#"$t"-v}
      table+=$'\n'"| **$(tool_title "$t")** <br><sub>v$ver</sub> | $(download_cell "$tag" .exe .exe) | $(download_cell "$tag" .apk .apk) | Coming soon |"
    else
      table+=$'\n'"| **$(tool_title "$t")** | Coming soon | Coming soon | Coming soon |"
    fi
    if [[ -n "$prev" ]]; then
      previous+="${previous:+ · }[$(tool_title "$t") ${prev#"$t"-v}](https://github.com/$REPO/releases/tag/$prev)"
    fi
  done
  [[ -n "$previous" ]] && table+=$'\n\n'"Previous versions: $previous"
  TABLE="$table" perl -0pi -e \
    's/(<!-- downloads:start -->).*?(<!-- downloads:end -->)/$1\n$ENV{TABLE}\n$2/s' README.md
}

# --- checks ---------------------------------------------------------------
[[ $# -ge 3 ]] || { sed -n '2,11p' "$0" | sed 's/^# \{0,1\}//'; exit 1; }
TOOL=$1 VERSION=${2#v}; shift 2
[[ " ${TOOLS[*]} " == *" $TOOL "* ]] || { echo "Unknown tool: $TOOL (use: ${TOOLS[*]})"; exit 1; }
[[ "$VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]] || { echo "Version must look like 1.2.0"; exit 1; }
TAG="$TOOL-v$VERSION"

LOGIN=$(gh api user --jq .login)
[[ "$LOGIN" == "$OWNER" ]] || { echo "Active GitHub account is '$LOGIN'. Run: gh auth switch -u $OWNER"; exit 1; }

cd "$(git rev-parse --show-toplevel)"
[[ -z "$(git status --porcelain)" ]] || { echo "Commit or stash your local changes first."; exit 1; }
git pull --ff-only -q

# --- stage files with standard names --------------------------------------
STAGE=$(mktemp -d)
trap 'rm -rf "$STAGE"' EXIT
for f in "$@"; do
  [[ -f "$f" ]] || { echo "File not found: $f"; exit 1; }
  case "$f" in
    *.exe) cp "$f" "$STAGE/$TOOL-$VERSION-windows-x64.exe" ;;
    *.apk) cp "$f" "$STAGE/$TOOL-$VERSION-android.apk" ;;
    *) echo "Unsupported file type: $f (expected .exe or .apk)"; exit 1 ;;
  esac
done
(cd "$STAGE" && shasum -a 256 "$TOOL-$VERSION"-* > SHA256SUMS.txt)

# --- publish --------------------------------------------------------------
echo "Creating release $TAG..."
gh release create "$TAG" "$STAGE"/* --repo "$REPO" \
  --title "$(tool_title "$TOOL") $VERSION" \
  --notes "$(tool_title "$TOOL") version $VERSION."

# --- keep only the newest $KEEP versions of this tool ---------------------
tool_tags "$TOOL" | tail -n +$((KEEP + 1)) | while read -r old; do
  echo "Deleting old release $old..."
  gh release delete "$old" --repo "$REPO" --cleanup-tag --yes
done

# --- refresh README download links ----------------------------------------
update_readme
if [[ -n "$(git status --porcelain README.md)" ]]; then
  git add README.md
  git commit -q -m "Update download links for $(tool_title "$TOOL") $VERSION"
  git -c credential.helper= -c credential.helper='!gh auth git-credential' push -q
fi
echo "Done: https://github.com/$REPO/releases/tag/$TAG"
