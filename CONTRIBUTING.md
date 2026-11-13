# 기여 안내

## 브랜치와 리뷰

`main`은 공유할 연구 기준점을, `develop`은 진행 중인 연구를 모읍니다.

1. 최신 `develop`에서 작업 브랜치를 만듭니다.
2. 작업 브랜치에서 `develop`으로 PR을 열고 상대 팀원에게 리뷰를 요청합니다.
3. 공유할 기준점이 준비되면 `develop`에서 `main`으로 PR을 열어 같은 검토 절차를 거칩니다.

## 커밋과 DCO

각 작성자는 [Developer Certificate of Origin 1.1](https://developercertificate.org/)을 읽고
자신의 기여에 동의할 때 `git commit -s -m "변경 내용"`으로 커밋합니다.
Git은 설정된 이름과 이메일을 `Signed-off-by` 트레일러에 추가합니다.
검사는 각 커밋의 작성자 이름·이메일과 일치하는 트레일러를 요구합니다.
마지막 본인 커밋에서 누락했다면 `git commit --amend --no-edit -s`로 보완할 수 있습니다.

PR에서는 대상 브랜치에 없는 모든 커밋을 검사하고, 두 보호 브랜치의 push에서는 새로 들어온 커밋을 검사합니다.
리뷰와 검사가 끝나면 **Rebase and merge**를 사용해 각 작성자의 트레일러를 보존합니다.

## 로컬 lint

필수 검사 `Lint`는 연구 코드에 ROS 2 Jazzy의 `ament_lint_common` 도구를 적용합니다.
Python은 flake8·pep257, C/C++는 cppcheck·cpplint·uncrustify, CMake는 lint_cmake, XML은 xmllint로 검사합니다.
ament_copyright는 프로젝트 라이선스와 지원하는 소스 파일을 확인합니다.
각 도구는 Git이 추적하는 대상 파일에 실행되며, 출판사 배포 폴더인 `manuscript/axioms/Definitions/`는 제외합니다.

Markdown과 YAML 검사도 함께 실행합니다. Docker와 Python 3을 사용할 수 있는 환경에서
저장소 루트의 다음 명령을 실행하면 CI와 같은 전체 검사를 재현할 수 있습니다.

```sh
python3 -m venv .venv
. .venv/bin/activate
python -m pip install -r .github/lint-requirements.txt
bash scripts/lint.sh
```

## main과 develop의 ruleset

[설정 파일](.github/rulesets/research-branches.json)은 PR 승인 1개, 최신 커밋의 `DCO`와 `Lint` 성공을 요구하고
두 브랜치 삭제와 강제 푸시를 차단합니다. 새 커밋을 올리면 다시 승인을 받습니다.
관리자는 아래 명령으로 ruleset을 최초 등록할 수 있습니다.

```sh
gh api --method POST repos/jack0682/Paper_study/rulesets --input .github/rulesets/research-branches.json
```

설정 파일을 커밋하는 것만으로는 GitHub가 병합을 차단하지 않습니다.
활성 상태는 저장소의 Settings → Rules → Rulesets에서 확인합니다.
