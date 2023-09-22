COVERAGE_REQUIRED="coverage.json"
PRODUCT=$(echo "$COVERAGE_REQUIRED" | jq -r '.[] | fromjson | .product')

TABLE_MD="## SMB COVERAGE
| **Product** | **Branches** | **Class** | **Lines** | **TOTAL** |
|---------------|-----------|-----------|------------|------------|
| $PRODUCT  | $BRANCH % | $FUNCTIONS % | $LINES % | $TOTAL % |"

PR_COMMENT="$TABLE_MD"
gh pr comment $PR_NUMBER --body "$PR_COMMENT"