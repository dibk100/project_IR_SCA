# 연구 방향

## 제목 (가제)

검증 가능한 피드백 기반 소형 코드 에이전트 후속 학습(Small Code Agent Post-training with Verifiable Feedback).

## 동기

최근 연구들은 trajectory와 검증 가능한 피드백을 활용한 Code Agent post-training의
가능성을 보여주었다. 그러나 이러한 방법들은 대부분 32B~70B 규모의 대형 모델을
대상으로 설계되었으며, 충분한 planning 능력과 self-verification 능력을 전제로 한다.

반면 7B급 Small Code Agent는 제한된 표현력과 긴 추론 과정의 어려움으로 인해
planning 실패, 반복적인 action loop, self-verification 실패와 같은 문제가 더욱
빈번하게 발생한다. 따라서 단순히 대형 모델의 post-training 방법을 그대로 적용하는
것만으로는 충분하지 않을 수 있다.

본 연구는 이러한 특성을 고려하여, 제한된 연산 자원에서도 효과적으로 학습 가능한
Small Code Agent post-training 방법을 탐구하는 것을 목표로 한다.

## 장기 목표

소형 코드 에이전트(Qwen2.5-Coder-7B)를 소프트웨어 엔지니어링 과제
(SWE-bench 계열)에서, 사람의 선호 라벨이 아니라 **검증 가능한 피드백**
(테스트 통과/실패, 패치 적용 여부 등)으로 후속 학습하여 개선한다.

## 계획된 파이프라인

```
SWE-agent + 로컬 7B 모델
        │
        ▼
Baseline trajectory 수집          ← 현재 단계
        │
        ▼
Trajectory 필터링 (검증적으로 올바른 rollout만 유지)
        │
        ▼
성공한 trajectory로 SFT
        │
        ▼
검증 가능한 보상으로 GRPO
        │
        ▼
여러 checkpoint 간 평가
```

## 현재 마일스톤

아직 **성능 개선이 목표가 아니다**. 지금의 유일한 목표:

> Qwen2.5-Coder-7B-Instruct를 SWE-agent에 연결하고,
> 문제 한 건의 전체 실행 과정을 저장한다.

흐름:

```
config → 실행 스크립트 → SWE-agent 실행 → output/log 저장
```

## 열린 질문 (추후 재검토)

- 재현성을 위해 SWE-agent의 어느 버전 / commit을 고정할 것인가?
- 서빙: 로컬 vLLM 서버 vs. 호스팅 API?
- GRPO 보상 정의: 이진 resolved 플래그 vs. 형태를 준 보상(shaped reward)?
- SFT에 필요한 trajectory 포맷은 무엇인가?
