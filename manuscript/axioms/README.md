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

pdfLaTeX, latexmk, MDPI 클래스가 사용하는 TeX 패키지와 EPS 변환 도구(epstopdf, Ghostscript)가 설치된 환경에서
저장소를 clone한 뒤 아래 명령을 실행합니다. 필요한 MDPI 클래스, 스타일, 로고는 [Definitions/](Definitions/)에 들어 있습니다.

```sh
cd manuscript/axioms
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build main.tex
```

[main.tex](main.tex)를 편집하면 결과는 `build/main.pdf`에 생성됩니다.

실제 투고 시에는 작성한 소스, 사용한 그림·참고문헌과 `Definitions/`를 한 ZIP에 담고 새 폴더에서 다시 빌드해 확인합니다.
