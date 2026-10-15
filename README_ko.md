# Genealogy Tools (족보 연구 도구)

[English](README.md) · **한국어**

동아시아 기록을 다루는 족보 연구자를 위한 무료 도구입니다.

**이 저장소에 대하여:** 이곳은 다운로드 전용 사이트입니다. 바로 설치할 수 있는 앱과 다운로드 안내 페이지만 있으며,
소스 코드는 없습니다. 소스는 비공개로 보관하며, 새 버전은 관리자만 이곳에 올립니다. 문제나 제안은
[이슈](https://github.com/chulkeesung/genealogy-tools/issues)로 남겨 주세요.

## 족보읽기 Reading Jokbo

족보를 읽기 위한 도구를 하나로 모은 앱입니다:

- **CJK-Year-Calculator (동양연도계산기)** - 한국·중국·일본의 재위 연도와 간지(육십갑자)를 서기 연도로 바꿉니다
- **Hanja→Hangul (한자→한글)** - 한자(漢字) 이름과 글을 한글로 바꾸고, 원하면 로마자까지 바꿉니다
- **Hangul→Roman (한글→로마자)** - 한글을 로마자로 바꿉니다 (국어의 로마자 표기법, 성씨는 관용 표기)
- **Korean-Chess (장기)** - 쉬어 가며 한 판

계정이 필요 없고, 광고가 없으며, 어떤 정보도 수집하지 않습니다.

| | Android 휴대폰 (`.apk`) | 컴퓨터 (`.jar`) |
|---|---|---|
| 실행 환경 | Android 7.0 이상 | Java 26 이상이 설치된 Mac, Windows, Linux |
| 인터넷 없이 사용 | 모두 가능 | 가능 (Name-Search 제외) |
| 추가 기능 | | FamilySearch 한국 족보 컬렉션에서 찾는 **Name-Search (이름 검색)** (인터넷과 FamilySearch 로그인 필요) |
| 모양 | 아이콘이 있는 앱 | 컴퓨터에서 실행되는 프로그램이 보여 주는 웹 브라우저 페이지 |

## 다운로드

다운로드 링크를 누르면 바로 다운로드가 시작됩니다.

<!-- downloads:start -->
| | Windows | Android | iPhone | 컴퓨터 (Java) |
|---|---|---|---|---|
| **[족보읽기 Reading Jokbo](#족보읽기-reading-jokbo)** <br><sub>v1.0.0</sub> | 준비 중 | [.apk 다운로드](https://github.com/chulkeesung/genealogy-tools/raw/main/bin/reading-jokbo-1.0.0-android.apk) | 준비 중 | [.jar 다운로드](https://github.com/chulkeesung/genealogy-tools/raw/main/bin/reading-jokbo-1.0.0-desktop.jar) |
<!-- downloads:end -->

[`bin`](bin/) 폴더에는 현재 버전과 바로 이전 버전이 보관됩니다. Windows 설치 파일(`.exe`)과 iPhone용은 아직 없습니다.

- **Android 휴대폰:** [Android 휴대폰: `.apk` 설치와 사용](#android-휴대폰-apk-설치와-사용) 참고
- **컴퓨터:** [컴퓨터: `.jar` 설치와 실행](#컴퓨터-jar-설치와-실행) 참고

### 다운로드 확인 (선택)

`bin` 폴더에 [`SHA256SUMS.txt`](bin/SHA256SUMS.txt) 파일이 있습니다. 받은 파일을 확인하려면
`shasum -a 256 <받은-파일>` (Mac, Linux) 또는 `Get-FileHash <받은-파일>` (Windows PowerShell, 같은 숫자를 대문자로
보여 줌)을 실행하여 해당 줄과 비교하세요.

---

## Android 휴대폰: `.apk` 설치와 사용

화면에 나오는 버튼 이름은 휴대폰 제조사와 Android 버전에 따라 조금씩 다를 수 있습니다. 괄호 안은 영어로 설정된
휴대폰에서의 이름입니다.

### 설치 (약 2분)

1. **휴대폰에서** Chrome으로 **github.com/chulkeesung/genealogy-tools** 를 엽니다 (또는 받은 링크를 엽니다).
2. **다운로드** 표에서 **.apk 다운로드** 를 누릅니다. 바로 다운로드가 시작됩니다. Chrome이 파일을 다운로드할지
   묻거나 위험할 수 있다고 경고하면 **다운로드** (Download) 또는 **무시하고 다운로드** (Download anyway)를 누릅니다.
   - 파일 이름 대신 GitHub의 파일 페이지가 열렸다면 (파일이 커서 보여 줄 수 없다고 나옵니다) **View raw** 를 누릅니다.
3. 다운로드가 끝나면 **열기** (Open)를 누릅니다 (또는 **Files** 앱 ▸ **다운로드** 에서 파일을 누릅니다. 삼성 휴대폰은
   **내 파일** 앱).
4. **처음 한 번만**, Android가 이 출처의 알 수 없는 앱은 설치할 수 없다고 알립니다: **설정** (Settings)을 누르고
   **이 출처 허용** (Allow from this source)을 켠 다음 뒤로(◁) 돌아갑니다.
   - 삼성: **설정 ▸ 애플리케이션 ▸ ⋮ ▸ 특별한 접근 ▸ 출처를 알 수 없는 앱 설치 ▸ Chrome** (또는 **내 파일**) ▸ **허용**.
5. **설치** (Install)를 누릅니다. **Google Play 프로텍트** 가 모르는 앱이라고 알리면 (Google Play에서 받은 앱이
   아니기 때문입니다) **세부정보 더보기 ▸ 무시하고 설치** (More details ▸ Install anyway)를 누릅니다. 앱을
   검사할지 물으면 어느 쪽을 골라도 괜찮습니다.
6. **열기** (Open)를 누릅니다. 다음부터는 홈 화면이나 앱 목록의 **족보읽기 Reading Jokbo** 아이콘으로 엽니다.

설치가 끝나면 **이 출처 허용** 을 다시 꺼도 됩니다. 설치할 때만 필요합니다.

### 사용

아래쪽 메뉴에 **Hanja→Hangul**, **Hangul→Roman**, **CJK-Year-Calculator** (처음 열리는 화면), **Korean-Chess**,
**About** 이 있습니다. 계산기의 **Help** 버튼은 각 칸의 사용법을 한국어, 중국어, 일본어로 설명합니다. 모든 기능이
인터넷 없이 작동하며, 고른 언어와 장기 기록은 휴대폰에 남습니다.

### 새 버전으로 업데이트

새 `.apk` 를 내려받아(1-3단계) **설치** 또는 **업데이트** (Update)를 누릅니다. 앱이 새 버전으로 바뀌고, 설정과
장기 기록은 그대로 남습니다. 새 버전 위에 이전 버전을 설치할 수는 없습니다.

### 삭제

앱 아이콘을 길게 누름 ▸ **앱 정보** (App info, 또는 ⓘ) ▸ **삭제** 또는 **제거** (Uninstall).

### 문제가 생기면

| 보이는 내용 | 해결 방법 |
|---|---|
| "앱이 설치되지 않았습니다" 또는 "패키지가 기존 패키지와 충돌합니다" (App not installed / package conflicts) | 다른 곳에서 받은 사본(시험판)이 이미 설치되어 있습니다. 그것을 삭제한 뒤 다시 설치하세요. |
| "패키지를 파싱하는 중 문제가 발생했습니다" (There was a problem parsing the package) | 다운로드가 중간에 끊겼거나 Android가 7.0보다 오래되었습니다. 파일을 다시 내려받으세요. |
| 다운로드 폴더에 파일이 없음 | Chrome ▸ ⋮ ▸ **다운로드**, 또는 **Files** (삼성: **내 파일**) 앱 ▸ **다운로드** 를 엽니다. |
| Play 프로텍트가 막음 | **세부정보 더보기 ▸ 무시하고 설치**. |

---

## 컴퓨터: `.jar` 설치와 실행

`.jar` 는 Java 프로그램입니다. 컴퓨터에서 작은 서버를 실행하고, 웹 브라우저에서 사용합니다.

### 1. Java 설치 (한 번만)

**Java 26 이상** 이 필요합니다. 무료인 Temurin을 [adoptium.net](https://adoptium.net/temurin/releases/)에서 받을 수
있습니다 (설치 프로그램은 영어로 나옵니다):

- **Windows:** Windows, x64, **JDK**, **.msi** 파일을 골라 실행합니다. **Custom Setup** 화면에서
  **Set JAVA_HOME variable** 을 "Will be installed on local hard drive" 로 바꿉니다 (**Add to PATH** 는 이미 켜져 있습니다).
- **Mac:** macOS, Apple 칩(M1 이후)이면 **aarch64**, Intel이면 **x64**, **JDK**, **.pkg** 파일을 골라 열고 안내대로
  설치합니다. (Homebrew가 있으면 `brew install --cask temurin`.)
- **Linux:** 배포판의 패키지(예: `openjdk-26-jdk`) 또는 Temurin의 `.tar.gz`.

그런 다음 **새** 터미널 창에서 확인합니다 - Windows: 시작 ▸ **PowerShell**; Mac: ⌘-스페이스, **터미널**
(Terminal) 입력, Return:

```
java -version
```

버전이 **26** 이상으로 나와야 합니다.

### 2. `.jar` 다운로드 (버전마다 한 번)

위 **다운로드** 표에서 **.jar 다운로드** 를 누릅니다. 바로 다운로드가 시작되어 **다운로드** (Downloads) 폴더에
저장됩니다. 브라우저가 파일을 유지할지 물으면 **유지** (Keep)를 고릅니다. (GitHub의 파일 페이지가 열렸다면 **Raw** 를
누릅니다.)

다운로드를 확인하려면 (선택) [`SHA256SUMS.txt`](bin/SHA256SUMS.txt)의 해당 줄과 비교합니다:
Mac `shasum -a 256 reading-jokbo-<버전>-desktop.jar`; Windows PowerShell
`Get-FileHash reading-jokbo-<버전>-desktop.jar` (같은 숫자가 대문자로 나옵니다).

### 3. 실행 (사용할 때마다)

터미널 창에서 파일이 있는 폴더로 가서 **`web` 이라는 단어를 붙여** 실행합니다 (파일의 버전에 맞게):

| Mac (터미널) | Windows (PowerShell) |
|---|---|
| `cd ~/Downloads` | `cd $HOME\Downloads` |
| `java -jar reading-jokbo-1.0.0-desktop.jar web` | `java -jar reading-jokbo-1.0.0-desktop.jar web` |

도움말: `java -jar reading` 까지 입력하고 **Tab** 키를 누르면 파일 이름이 자동으로 완성됩니다. `.jar` 파일을 더블클릭하지
마세요: `web` 없이 실행되면 터미널에서 글자가 입력되기를 아무 표시 없이 기다리기만 합니다.

다음과 같이 나오면 실행 중입니다:

```
GenealogyTool web app running. Open:
  on this Mac:  http://localhost:8080/
  ...
Press Ctrl+C to stop.
```

컴퓨터가 Java의 들어오는 연결을 허용할지 묻거나(Mac) Windows Defender 방화벽 창이 나오면 **허용** (Allow)을
고릅니다 (Windows: 개인 네트워크). 같은 Wi-Fi의 휴대폰에서 쓸 때만 필요합니다.

### 4. 열기

웹 브라우저에서 **http://localhost:8080/** 으로 갑니다. 아래쪽 메뉴에 **Hanja→Hangul**, **Hangul→Roman**,
**Name-Search**, **CJK-Year-Calculator**, **Korean-Chess** 가 있습니다. Name-Search 화면에 FamilySearch 로그인을
연결하는 방법이 나옵니다.

같은 Wi-Fi에 있는 휴대폰이나 태블릿에서도 쓸 수 있습니다: 실행할 때 나온 다른 `http://…:8080/` 주소를 엽니다.

### 5. 끝내기

터미널 창에서 **Ctrl+C** 를 누릅니다 (창을 닫아도 끝납니다). 다음에는 3, 4단계를 다시 하면 됩니다.

옵션은 `web` 뒤에 붙입니다: `--port 8081` 은 다른 포트를 씁니다 (그때는 http://localhost:8081/ 을 엽니다);
`--host 127.0.0.1` 은 이 컴퓨터에서만 쓸 수 있게 합니다.

### 문제가 생기면

터미널의 메시지는 영어로 나옵니다.

| 보이는 내용 | 해결 방법 |
|---|---|
| `java` is not recognized / command not found | Java가 설치되지 않았거나, 설치 전에 연 터미널입니다: 새 터미널을 여세요. Windows: **Add to PATH** 를 켜고 `.msi` 를 다시 실행하세요. |
| `UnsupportedClassVersionError ... class file version 70.0` | Java가 26보다 오래되었습니다: Java 26을 설치하세요 (1단계). |
| `Unable to access jarfile` | 폴더나 파일 이름이 틀렸습니다: 먼저 `cd` 로 다운로드 폴더로 가고, Tab 키로 이름을 완성하세요. |
| `Address already in use` | 다른 창에서 이미 실행 중입니다 (그 창을 쓰거나 끝내세요). 또는 `--port 8081` 을 붙이세요. |
| 페이지가 열리지 않음 | 터미널에 아직 "running" 이 보이나요? 주소를 정확히 입력하세요: `http://localhost:8080/` (https가 아니라 http). |

---

## 문제 신고

[이슈](https://github.com/chulkeesung/genealogy-tools/issues)를 열고 앱 버전, 사용 기기와 그 시스템 버전,
입력한 내용과 기대한 결과, 실제 결과를 적어 주세요.

## 라이선스

[MIT](LICENSE) © Chulkee Sung
