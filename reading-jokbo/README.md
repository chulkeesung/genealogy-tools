# 족보읽기 Reading Jokbo

Tools for reading Korean genealogies (족보), in one app:

- **CJK-Year-Calculator** - Korean, Chinese and Japanese reign years and sixty-year-cycle names to Western years
- **Hanja→Hangul** - Hanja (漢字) names and text to Hangul (한글), optionally on to Roman letters
- **Hangul→Roman** - Hangul to Roman letters (Revised Romanization, customary surname spellings)
- **Korean-Chess** (장기) - for a break

It needs no account, has no ads and collects no data.

| | Android phone (`.apk`) | Computer (`.jar`) |
|---|---|---|
| Runs on | Android 7.0 or later | Mac, Windows or Linux with Java 26 or later |
| Works offline | yes, everything | yes, except Name-Search |
| Also has | | **Name-Search** in FamilySearch's Korean genealogy collection (needs the internet and a FamilySearch sign-in) |
| How it looks | an app with its own icon | a page in your web browser, served by the program on your computer |

## Files

Tap or click a file name to download it - the download starts right away. The newest version is listed first;
the one before it is kept for a while.

<!-- files:start -->
| File | For |
|---|---|
| [`android/reading-jokbo-1.0.0-android.apk`](https://github.com/chulkeesung/genealogy-tools/raw/main/reading-jokbo/android/reading-jokbo-1.0.0-android.apk) | Android phones (Android 7 and later) |
| [`desktop/reading-jokbo-1.0.0-desktop.jar`](https://github.com/chulkeesung/genealogy-tools/raw/main/reading-jokbo/desktop/reading-jokbo-1.0.0-desktop.jar) | Mac, Windows, Linux (needs Java 26 or later) |
| [`SHA256SUMS.txt`](SHA256SUMS.txt) | checking a download: `shasum -a 256 <file>` prints the same line |
<!-- files:end -->

---

## Android phone: install and use the `.apk`

### Install (about 2 minutes)

1. **On the phone**, open **github.com/chulkeesung/genealogy-tools** in Chrome (or the link you were sent).
2. In the **Download** table, tap **Download .apk** (or, on this page, the `.apk` file name under **Files**). The
   download starts right away. If Chrome asks whether to download the file or warns that it might be harmful, tap
   **Download** / **Download anyway**.
   - If you landed on the file's own GitHub page instead (it says the file is too big to show), tap **View raw**.
3. When the download finishes, tap **Open** (or open the **Files** app ▸ **Downloads** and tap the file).
4. **The first time only**, Android says it isn't allowed to install unknown apps from this source:
   tap **Settings**, turn on **Allow from this source**, then tap back (◁).
   - Samsung: **Settings ▸ Apps ▸ ⋮ ▸ Special access ▸ Install unknown apps ▸ Chrome** (or **My Files**) ▸ **Allow**.
5. Tap **Install**. If **Google Play Protect** says it doesn't know the app (it isn't from Google Play), tap
   **More details ▸ Install anyway**. If it offers to scan the app, either answer is fine.
6. Tap **Open**. From now on, open it from its icon, **족보읽기 Reading Jokbo**, on the home screen or in the app list.

You can turn **Allow from this source** off again afterwards; it is only needed while installing.

### Use

The menu bar at the bottom has **Hanja→Hangul**, **Hangul→Roman**, **CJK-Year-Calculator** (opens first),
**Korean-Chess** and **About**. The calculator's **Help** button explains its fields in Korean, Chinese and
Japanese. Everything works without the internet; the chosen language and the game history stay on the phone.

### Update to a newer version

Download the newer `.apk` (steps 1-3) and tap **Install** (or **Update**). The app is replaced; your settings and
game history stay. An older version can't be installed over a newer one.

### Uninstall

Touch and hold the app's icon ▸ **App info** (or ⓘ) ▸ **Uninstall**.

### If something goes wrong

| What you see | What to do |
|---|---|
| "App not installed" or "package conflicts with an existing package" | A copy from somewhere else (a test version) is installed. Uninstall it, then install again. |
| "There was a problem parsing the package" | The download was cut off, or Android is older than 7.0. Download the file again. |
| The file isn't in Downloads | Open Chrome ▸ ⋮ ▸ **Downloads**, or the **Files** app ▸ **Downloads**. |
| Play Protect blocks it | **More details ▸ Install anyway**. |

---

## Computer: install and run the `.jar`

The `.jar` is a Java program. It runs a small server on your computer, and you use it in your web browser.

### 1. Install Java (once)

It needs **Java 26 or later**. A free one is Temurin, at [adoptium.net](https://adoptium.net/temurin/releases/):

- **Windows:** choose Windows, x64, **JDK**, the **.msi** file; run it. On the **Custom Setup** page, set
  **Set JAVA_HOME variable** to "Will be installed on local hard drive" (**Add to PATH** is already on).
- **Mac:** choose macOS, **aarch64** for Apple chips (M1 and later) or **x64** for Intel, **JDK**, the **.pkg**
  file; open it and click through. (With Homebrew: `brew install --cask temurin`.)
- **Linux:** your distribution's package (e.g. `openjdk-26-jdk`) or Temurin's `.tar.gz`.

Then check it in a **new** terminal window - Windows: Start ▸ **PowerShell**; Mac: ⌘-Space, type **Terminal**,
Return:

```
java -version
```

It must print version **26** or higher.

### 2. Download the `.jar` (once per version)

On **github.com/chulkeesung/genealogy-tools**, click **Download .jar** in the **Download** table (or, on this page,
the `.jar` file name under **Files**). The download starts right away and lands in your **Downloads** folder. If
the browser asks whether to keep the file, choose **Keep**. (On the file's own GitHub page, click **Raw**.)

To check the download (optional), compare with the line in [`SHA256SUMS.txt`](SHA256SUMS.txt):
Mac `shasum -a 256 reading-jokbo-<version>-desktop.jar`; Windows PowerShell
`Get-FileHash reading-jokbo-<version>-desktop.jar` (same digits, in capitals).

### 3. Start it (each time you use it)

In a terminal window, go to the folder and start it **with the word `web`** (use your file's version):

| Mac (Terminal) | Windows (PowerShell) |
|---|---|
| `cd ~/Downloads` | `cd $HOME\Downloads` |
| `java -jar reading-jokbo-1.0.0-desktop.jar web` | `java -jar reading-jokbo-1.0.0-desktop.jar web` |

Tip: type `java -jar reading` and press **Tab** to complete the file name. Don't double-click the `.jar`: without
`web` it waits silently for text typed in a terminal.

It is running when it prints:

```
GenealogyTool web app running. Open:
  on this Mac:  http://localhost:8080/
  ...
Press Ctrl+C to stop.
```

If the computer asks whether Java may accept incoming connections (Mac) or shows a Windows Defender Firewall
window, choose **Allow** (on Windows: Private networks). It is only needed for phones on your Wi-Fi.

### 4. Open it

In your web browser, go to **http://localhost:8080/**. The menu bar at the bottom has **Hanja→Hangul**,
**Hangul→Roman**, **Name-Search**, **CJK-Year-Calculator** and **Korean-Chess**. Name-Search explains on its
screen how to connect your FamilySearch sign-in.

A phone or tablet on the same Wi-Fi can use it too: open the other `http://…:8080/` address it printed.

### 5. Stop it

Press **Ctrl+C** in the terminal window (closing the window also stops it). Next time, repeat steps 3 and 4.

Options go after `web`: `--port 8081` uses another port (then open http://localhost:8081/); `--host 127.0.0.1`
keeps it to this computer only.

### If something goes wrong

| What you see | What to do |
|---|---|
| `java` is not recognized / command not found | Java isn't installed, or the terminal was opened before installing: open a new one. Windows: run the `.msi` again with **Add to PATH**. |
| `UnsupportedClassVersionError ... class file version 70.0` | Java is older than 26: install Java 26 (step 1). |
| `Unable to access jarfile` | Wrong folder or name: `cd` to Downloads first; use Tab to complete the name. |
| `Address already in use` | It is already running in another window (use that one, or stop it), or add `--port 8081`. |
| The page doesn't open | Is the terminal still showing "running"? Type the address exactly: `http://localhost:8080/` (http, not https). |
