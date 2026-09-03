#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../../" || exit 1
cd infra || true
if [ ! -f plan.tfplan ]; then
  echo "plan.tfplan not found. Run plan first."
  exit 1
fi
terraform apply -input=false plan.tfplan
