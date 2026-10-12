# 족보읽기 Reading Jokbo

One app with every tool for reading Korean genealogies (족보): the [Year Calculator](../year-calculator/),
the [Transliterator](../transliterator/) (Hanja → Hangul → Roman) and Korean Chess (장기). It works offline,
needs no account, and collects no data.

## Files

The newest version is listed first; the one before it is kept for a while.

<!-- files:start -->
<!-- files:end -->

There is no iPhone or Windows installer yet. The computer version also has a name search.

## Installing

### Android

1. On the phone, open this page and tap the newest `.apk` file, then **Download** (the "raw" download button).
2. Open the downloaded file. If Android says installing from this source isn't allowed: **Settings ▸ Allow from
   this source**, then go back.
3. Tap **Install**. If Play Protect says it doesn't recognize the app (it isn't on Google Play): **More details ▸
   Install anyway**.

To update, install a newer `.apk` over the old one; your settings stay.

### Computer (Java)

1. Install Java 26 or later, e.g. from [adoptium.net](https://adoptium.net).
2. Download the `.jar` (in `desktop/`), open a terminal in its folder and run (with the file's name):
   ```
   java -jar reading-jokbo-<version>-desktop.jar web
   ```
3. Open **http://localhost:8080/** in a browser. Leave the terminal open while you use it; Ctrl+C stops it.

A phone on the same Wi-Fi can use it too, at the address it prints.
