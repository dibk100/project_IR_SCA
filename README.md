# project_IR_SCA

검증 가능한 피드백 기반 소형 코드 에이전트 후속 학습(Small Code Agent Post-training with Verifiable Feedback).

## 현재 마일스톤

Qwen2.5-Coder-7B-Instruct를 SWE-agent에 연결하고, 하나의 에이전트 전체 trajectory를 저장·분석한다.

## 현재 범위

1. SWE-agent 환경 설정
2. 로컬 7B 모델 연동
3. Baseline trajectory 수집
4. SFT 및 GRPO 설계

## 저장소 구조

- `external/`: 외부 연구 코드 (예: SWE-agent)
- `configs/`: 실험 설정 파일
- `scripts/`: 재현 가능한 실행 명령
- `outputs/`: 실험 결과물
- `docs/`: 연구 및 실험 기록
