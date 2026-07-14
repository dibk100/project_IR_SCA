# 실험 로그

## EXP-001: SWE-agent baseline 설정

### 목적
Qwen2.5-Coder-7B-Instruct로 SWE-agent 과제 한 건을 실행하고 전체 trajectory를 저장한다.

### 환경
- GPU: NVIDIA GeForce RTX 5090 (32GB), Driver 570.211.01
- CUDA: 12.0
- Python: 3.12 (conda env `sweagent`)
- Docker: 29.0.2 (SWE-agent 기본 백엔드)
- SWE-agent commit: 1132b3e (v1.1.0), SWE-ReX 1.4.0
- 모델: Qwen/Qwen2.5-Coder-7B-Instruct
- 추론 서버: (미설정 — 다음 단계에서 vLLM 로컬 서버 예정)

### 진행 상황
- [x] Step 1: SWE-agent clone (`external/SWE-agent/`)
- [x] Step 2: README대로 editable 설치 및 `sweagent --help` 실행 확인
- [ ] Step 3: LLM(Qwen2.5-Coder-7B) 연동 및 task 1건 실행

### 설정
`configs/qwen25_coder_7b.yaml`

### 실행 명령
```bash
bash scripts/run_baseline.sh
```

### 결과
- 상태(Status):
- Task ID:
- 에이전트 스텝 수:
- 해결됨(Resolved):
- 실행 시간(Runtime):
- 출력 경로:

### 이슈

### 다음 단계
