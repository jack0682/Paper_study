# Axioms 특집호 투고 원고

**Applied Mathematics and Mathematical Modeling, 2nd Edition**의 원고 마감은 **2027년 4월 30일**입니다.
[특집호 공고 및 투고](https://www.mdpi.com/journal/axioms/special_issues/5PT12Y67QY) · [저자 안내](https://www.mdpi.com/journal/axioms/instructions)

## 주제 확정 후 준비할 내용

| 항목 | 작성할 내용 |
| --- | --- |
| 가제목 | 연구 질문과 수학적 대상을 드러내는 영문 제목 |
| 사전 초록 | 문제, 제안할 모델이나 분석 방법, 검증 계획, 기대 기여를 담은 영문 약 250단어 |
| 예상 제출일 | 공저자가 일정을 합의하면 기입 |

사전 초록은 계획 단계의 설명입니다. 실제 결과가 나오면 [원고](main.tex)의 초록에 검증된 결과를 씁니다.

## 로컬에서 원고 시작하기

저장소 루트에서 아래 명령을 실행합니다. 파일이 없다면 저자 안내의 **LaTeX template** 링크에서 ZIP을 받을 수 있습니다.
MDPI 배포 파일은 투고 준비용으로 로컬에 두고, 팀이 작성하는 원고는 Git으로 관리합니다.

```sh
cd manuscript/axioms
unzip -n ~/Downloads/MDPI_template_ACS.zip
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build main.tex
```

편집할 파일은 `main.tex`, 결과는 `build/main.pdf`입니다. 빌드에는 pdfLaTeX, latexmk와 MDPI 클래스의 의존 패키지가 필요합니다.
`template.tex`와 `template.pdf`에는 출판사가 제공한 수식·정리·표·참고문헌 예제가 있습니다.

실제 투고 시에는 작성한 소스, 사용한 그림·참고문헌과 `Definitions/`를 한 ZIP에 담고 새 폴더에서 다시 빌드해 확인합니다.
