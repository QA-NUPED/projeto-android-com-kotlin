# COVERAGE_REQUIRED= "coverage.json"
# PRODUCT=$(echo "$COVERAGE_REQUIRED" | jq -r '.[].Product')

TABLE_MD="## SMB COVERAGE
| **Product** | **Branches** | **Class** | **Lines** | **TOTAL** |
|---------------|-----------|-----------|------------|------------|
| Stone Benefits  | 40 % | 44 % | 50 % | 50 % |
| Stone Benefits  | 40 % | 44 % | 50 % | 50 % |
| Stone Benefits  | 40 % | 44 % | 50 % | 50 % |"

PR_COMMENT="$TABLE_MD"
gh pr comment $PR_NUMBER --body "$PR_COMMENT"