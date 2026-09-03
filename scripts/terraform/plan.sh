#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../../" || exit 1
cd infra || true
terraform init -input=false
terraform plan -out=plan.tfplan
echo "Plan saved to plan.tfplan"
