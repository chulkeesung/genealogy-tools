# Contributing

Thanks for helping improve Genealogy Tools!

## How to contribute

1. Fork this repository.
2. Create a branch for your change.
3. Make your change in the tool's folder (`transliterator/` or `year-calculator/`).
4. Open a pull request that describes what you changed and why.

## Source code only, please

Please send **source code changes**, not compiled files (`.exe`, `.apk`, `.ipa`).
Downloadable builds are produced by the maintainer from the reviewed source, so
users can trust what they install.

## Reporting problems

Open an [issue](https://github.com/chulkeesung/genealogy-tools/issues) and include:

- which tool (Transliterator or Year Calculator)
- your device (Windows, Android, or iPhone) and its version
- what you entered, what you expected, and what happened

## Release naming (maintainers)

Each tool is versioned separately:

| Tool | Tag | File names |
|---|---|---|
| Transliterator | `transliterator-v1.0.0` | `transliterator-1.0.0-windows-x64.exe`, `transliterator-1.0.0-android.apk` |
| Year Calculator | `year-calculator-v1.0.0` | `year-calculator-1.0.0-windows-x64.exe`, `year-calculator-1.0.0-android.apk` |

Every release includes a `SHA256SUMS.txt` file:

```bash
shasum -a 256 transliterator-1.0.0-* > SHA256SUMS.txt
gh release create transliterator-v1.0.0 transliterator-1.0.0-* SHA256SUMS.txt \
  --title "Transliterator 1.0.0" --notes "What's new in this version"
```

## License

By contributing, you agree that your contributions are licensed under the
[MIT License](LICENSE).
