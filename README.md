# Genealogy Tools

Free tools for genealogists working with East Asian records.

**About this repository:** it is a download site only. It holds the ready-to-install apps and the pages for
downloading them - no source code. The source is kept privately, and new versions are added here only by the
maintainer. Problems and suggestions are welcome as [issues](https://github.com/chulkeesung/genealogy-tools/issues).

| Tool | What it does |
|---|---|
| [Transliterator](transliterator/) | Converts Hanja (漢字) to Hangul (한글), then to Roman letters |
| [Year Calculator](year-calculator/) | Converts years in Chinese, Japanese, and Korean (CJK) calendars to Western years |
| [족보읽기 Reading Jokbo](reading-jokbo/) | All of the above in one app, plus Korean Chess (장기) - **available now** |

## Download

<!-- downloads:start -->
| | Windows | Android | iPhone | Computer (Java) |
|---|---|---|---|---|
| **[족보읽기 Reading Jokbo](reading-jokbo/)** | Coming soon | Coming soon | Coming soon | Coming soon |
| **[Transliterator](transliterator/)** | Coming soon | Coming soon | Coming soon | Coming soon |
| **[Year Calculator](year-calculator/)** | Coming soon | Coming soon | Coming soon | Coming soon |
<!-- downloads:end -->

Each tool's folder keeps the current version and the one before it.

### Installing

- **Windows:** Download the `.exe` and run it. If Windows SmartScreen shows a warning, click **More info → Run anyway**.
- **Android:** Download the `.apk` on your phone, open it, and allow installs from your browser when prompted.
  If Play Protect warns that it doesn't recognize the app, tap **More details → Install anyway**.
- **Computer (Java):** Install Java 26 or later, then run `java -jar <file>.jar web` and open http://localhost:8080/.
  Details in [Reading Jokbo](reading-jokbo/#computer-java).
- **iPhone:** Coming soon.

### Verifying downloads

Each tool's folder has a `SHA256SUMS.txt` file. To check a download, run:

```bash
shasum -a 256 <downloaded-file>
```

and compare the result with the matching line in `SHA256SUMS.txt`.

## Reporting problems

Open an [issue](https://github.com/chulkeesung/genealogy-tools/issues) and include which tool, your device and
its version, and what you entered, expected and got.

## License

[MIT](LICENSE) © Chulkee Sung
