# Genealogy Tools (족보 연구 도구)

[English](README.md) · **한국어**

동아시아 기록을 다루는 족보 연구자를 위한 무료 도구입니다.

**이 저장소에 대하여:** 이곳은 다운로드 전용 사이트입니다. 바로 설치할 수 있는 앱과 다운로드 안내 페이지만 있으며,
소스 코드는 없습니다. 소스는 비공개로 보관하며, 새 버전은 관리자만 이곳에 올립니다. 문제나 제안은
[이슈](https://github.com/chulkeesung/genealogy-tools/issues)로 남겨 주세요.

**[족보읽기 Reading Jokbo](reading-jokbo/README_ko.md)** - 족보를 읽기 위한 도구를 하나로 모은 앱:

- **CJK-Year-Calculator (동양연도계산기):** 한국·중국·일본(CJK) 연호와 간지 연도를 서기 연도로 바꿉니다
- **Hanja→Hangul (한자→한글):** 한자(漢字)를 한글로 바꾸고, 원하면 로마자까지 바꿉니다
- **Hangul→Roman (한글→로마자):** 국어의 로마자 표기법(Revised Romanization)에 따르며, 성씨는 관용 표기를 씁니다
- **Korean-Chess (장기)**, 그리고 컴퓨터용에는 FamilySearch **Name-Search (이름 검색)** 도 있습니다

## 다운로드

<!-- downloads:start -->
| | Windows | Android | iPhone | 컴퓨터 (Java) |
|---|---|---|---|---|
| **[족보읽기 Reading Jokbo](reading-jokbo/README_ko.md)** <br><sub>v1.0.0</sub> | 준비 중 | [.apk 다운로드](https://github.com/chulkeesung/genealogy-tools/raw/main/reading-jokbo/android/reading-jokbo-1.0.0-android.apk) | 준비 중 | [.jar 다운로드](https://github.com/chulkeesung/genealogy-tools/raw/main/reading-jokbo/desktop/reading-jokbo-1.0.0-desktop.jar) |
<!-- downloads:end -->

앱 폴더에는 현재 버전과 바로 이전 버전이 보관됩니다.

### 설치

**자세한 단계별 안내와 문제 해결 방법: [Reading Jokbo ▸ 설치와 사용](reading-jokbo/README_ko.md#android-휴대폰-apk-설치와-사용).** 요약하면:

- **Android 휴대폰 (`.apk`, Android 7.0 이상):** 휴대폰에서 위 표의 **.apk 다운로드** 를 누르면 바로 다운로드가
  시작됩니다. 받은 파일을 열고, 브라우저에서 설치를 허용할지 물으면 **이 출처 허용** 을 켠 다음 **설치** 를 누릅니다.
  Play 프로텍트가 알 수 없는 앱이라고 경고하면 **세부정보 더보기 → 무시하고 설치** (More details → Install anyway)를
  누릅니다. ([자세히](reading-jokbo/README_ko.md#android-휴대폰-apk-설치와-사용))
- **컴퓨터 (`.jar`, Mac·Windows·Linux):** Java 26 이상을 설치하고([adoptium.net](https://adoptium.net)에서 무료),
  위 표의 **.jar 다운로드** 를 누른 뒤, 터미널에서 다운로드 폴더로 이동하여
  `java -jar reading-jokbo-<버전>-desktop.jar web` 을 실행하고 브라우저에서 **http://localhost:8080/** 을 엽니다.
  ([자세히](reading-jokbo/README_ko.md#컴퓨터-jar-설치와-실행))
- **Windows 설치 파일 (`.exe`) 과 iPhone:** 아직 없습니다.

### 다운로드 확인 (선택)

폴더에 `SHA256SUMS.txt` 파일이 있습니다. 받은 파일을 확인하려면 `shasum -a 256 <받은-파일>` (Mac, Linux) 또는
`Get-FileHash <받은-파일>` (Windows PowerShell, 같은 숫자를 대문자로 보여 줌)을 실행하여 해당 줄과 비교하세요.

## 문제 신고

[이슈](https://github.com/chulkeesung/genealogy-tools/issues)를 열고 앱 버전, 사용 기기와 그 시스템 버전,
입력한 내용과 기대한 결과, 실제 결과를 적어 주세요.

## 라이선스

[MIT](LICENSE) © Chulkee Sung
