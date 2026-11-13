# Paper Study

두 사람이 연구 주제를 정하고, 실험과 논문 작성까지 함께 진행하는 저장소입니다.

## 첫 회의에서 할 일

1. 각자 [후보 주제표](docs/topics/shortlist.md)에 풀고 싶은 문제와 가장 가까운 선행 연구를 한 건씩 적습니다.
2. 두 후보의 차별점, 데이터 접근성, 첫 실험 비용을 비교해 먼저 검증할 주제를 고릅니다.
3. [연구 질문 양식](docs/questions/TEMPLATE.md)을 같은 폴더에 `RQ-001.md`로 복사하고 두 사람이 답을 판정할 기준을 합의합니다.
4. [연구 계획](docs/plan.md)에 첫 실험, 담당자, 일정과 중단 기준을 적습니다.

## 저장소 구조

| 경로 | 담는 내용 |
| --- | --- |
| [docs/topics/](docs/topics/shortlist.md) | 후보 주제, 선정 이유, 보류한 대안 |
| [docs/questions/](docs/questions/TEMPLATE.md) | 질문별 가설, 비교 대상, 판정 기준 |
| [docs/literature/](docs/literature/TEMPLATE.md) | 선행 연구별 방법, 결과와 한계 |
| [docs/](docs/plan.md) · [decisions/](docs/decisions/TEMPLATE.md) | 연구 계획과 회의에서 결정한 사항 |
| [data/](data/README.md) | 데이터 출처, 버전, 접근 방법 |
| [src/](src/README.md) · [tests/](tests/README.md) | 연구 코드와 동작을 검증하는 테스트 |
| [experiments/](experiments/TEMPLATE.md) | 실험별 설정, 실행 명령, 코드 커밋 |
| [results/](results/README.md) | 원고에 인용할 결과표와 그림 |
| [manuscript/](manuscript/outline.md) | 원고 개요와 주장별 근거, [Axioms 특집호 투고 원고](manuscript/axioms/README.md) |
| [scripts/](scripts/) · [.github/](.github/) | 개발 검사, GitHub Actions, PR 양식과 ruleset |

예를 들어 `experiments/EXP-001.md`는 `docs/questions/RQ-001.md`를 연결하고, 실행한 코드 커밋과
`results/EXP-001/`의 결과표 경로를 기록합니다. 원고에서 해당 표를 인용하면 실험 조건까지 거슬러 확인할 수 있습니다.

작업 브랜치는 `develop`에서 만들고, `develop`을 대상으로 PR을 열어 상대방에게 리뷰를 요청합니다.
두 사람이 공유할 연구 기준점이 준비되면 `develop`에서 `main`으로 PR을 엽니다.
커밋 sign-off와 로컬 검사 방법은 [기여 안내](CONTRIBUTING.md)에 있습니다.
