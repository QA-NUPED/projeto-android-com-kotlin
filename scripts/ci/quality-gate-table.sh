#!/bin/bash

# COVERAGE_REQUIRED=“coverage.json”
# PRODUCT=$(echo “$COVERAGE_REQUIRED” | jq -r ‘.[].Product’)
TABLE_MD="## Certifique que sua alteração atende o mínimo de cobertura requerido
| **Product** | **Branches** | **Class** | **Lines** | **TOTAL** |
|---------------|-----------|-----------|------------|------------|
| Stone Benefits  | 40 % | 44 % | 50 % | 50 % |
| Giro Stone  | 40 % | 44 % | 50 % | 50 % |
| Acompanhamento de TPV  | 40 % | 44 % | 50 % | 50 % |
| Autocred  | 40 % | 44 % | 50 % | 50 % |"
PR_COMMENT="$TABLE_MD"
gh pr comment $PR_NUMBER --body "$PR_COMMENT"