# Genealogy Tools

Free tools for genealogists working with East Asian records.

**About this repository:** it is a download site only. It holds the ready-to-install apps and the pages for
downloading them - no source code. The source is kept privately, and new versions are added here only by the
maintainer. Problems and suggestions are welcome as [issues](https://github.com/chulkeesung/genealogy-tools/issues).

**[족보읽기 Reading Jokbo](reading-jokbo/)** - one app for reading Korean genealogies (족보):

- **CJK-Year-Calculator:** converts years in Korean, Chinese and Japanese (CJK) calendars to Western years
- **Hanja→Hangul:** converts Hanja (漢字) to Hangul (한글), optionally on to Roman letters
- **Hangul→Roman:** Revised Romanization, with customary surname spellings
- **Korean-Chess** (장기), and on a computer also a FamilySearch **Name-Search**

## Download

<!-- downloads:start -->
| | Windows | Android | iPhone | Computer (Java) |
|---|---|---|---|---|
| **[족보읽기 Reading Jokbo](reading-jokbo/)** <br><sub>v1.0.0</sub> | Coming soon | [Download .apk](reading-jokbo/android/reading-jokbo-1.0.0-android.apk) | Coming soon | [Download .jar](reading-jokbo/desktop/reading-jokbo-1.0.0-desktop.jar) |
<!-- downloads:end -->

The app's folder keeps the current version and the one before it.

### Installing

**Step-by-step instructions, with fixes for common problems: [Reading Jokbo ▸ install and use](reading-jokbo/#android-phone-install-and-use-the-apk).** In short:

- **Android phone (`.apk`, Android 7.0 or later):** download it on the phone, open it, allow installing from your
  browser when asked, then **Install**. If Play Protect warns that it doesn't recognize the app, tap
  **More details → Install anyway**. ([details](reading-jokbo/#android-phone-install-and-use-the-apk))
- **Computer (`.jar`, Mac, Windows or Linux):** install Java 26 or later (free from
  [adoptium.net](https://adoptium.net)), then in a terminal, in the download's folder:
  `java -jar reading-jokbo-<version>-desktop.jar web` and open **http://localhost:8080/** in a browser.
  ([details](reading-jokbo/#computer-install-and-run-the-jar))
- **Windows installer (`.exe`) and iPhone:** not yet.

### Verifying downloads (optional)

The folder has a `SHA256SUMS.txt` file. To check a download, run `shasum -a 256 <downloaded-file>` (Mac, Linux) or
`Get-FileHash <downloaded-file>` (Windows PowerShell, prints the same digits in capitals) and compare the result
with the matching line.

## Reporting problems

Open an [issue](https://github.com/chulkeesung/genealogy-tools/issues) and include the app's version, your device and
its system version, and what you entered, expected and got.

## License

[MIT](LICENSE) © Chulkee Sung
