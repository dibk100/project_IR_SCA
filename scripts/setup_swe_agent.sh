#!/usr/bin/env bash
set -euo pipefail

# SWE-agent 환경 설치 스크립트.
# 실제로 검증된 설치 절차의 재현 기록으로 유지한다.
#
# 검증 환경 (EXP-001 기준):
#   - GPU: NVIDIA RTX 5090 (32GB), Driver 570.211.01, CUDA 12.0
#   - Docker 29.0.2 (SWE-agent 기본 백엔드)
#   - conda env: sweagent (Python 3.12)
#   - 설치된 SWE-agent: v1.1.0 (commit 1132b3e)

# --- 1. SWE-agent 소스 가져오기 ----------------------------------------------
# 현재는 external/ 에 직접 clone 방식 사용 (.gitignore 처리됨).
if [ ! -d external/SWE-agent/.git ]; then
  git clone https://github.com/SWE-agent/SWE-agent.git external/SWE-agent
fi
# (추후 submodule 전환 시)
#   git submodule add https://github.com/SWE-agent/SWE-agent.git external/SWE-agent
#   git submodule update --init --recursive

# --- 2. 전용 conda 환경 (권장) -----------------------------------------------
# conda create -y -n sweagent python=3.12
# conda activate sweagent

# --- 3. editable 설치 (README 방식) ------------------------------------------
python -m pip install --upgrade pip
pip install --editable external/SWE-agent

# --- 4. 설치 확인 ------------------------------------------------------------
sweagent --help

# TODO: LLM 키(keys.md) / vLLM 로컬 서버 설정을 이후 단계에서 추가한다.
