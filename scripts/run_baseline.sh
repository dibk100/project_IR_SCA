#!/usr/bin/env bash
set -euo pipefail

# First baseline run.
# NOTE: reconcile the CLI invocation below with the installed SWE-agent version.

CONFIG="configs/qwen25_coder_7b.yaml"

python -m sweagent.run.run \
  --config "$CONFIG"
