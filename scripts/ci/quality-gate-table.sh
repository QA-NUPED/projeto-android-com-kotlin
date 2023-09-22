COVERAGE_REQUIRED=$(cat ./script/ci/coverage.json)

DATA_PRODUCT=$(echo "$COVERAGE_REQUIRED")
printf "sua variavel é %s\n" $DATA_PRODUCT

TABLE_MD="## SMB COVERAGE
| **Product** | **Branches** | **Class** | **Lines** | **TOTAL** |
|---------------|-----------|-----------|------------|------------|
| $PRODUCT  | $BRANCH % | $FUNCTIONS % | $LINES % | $TOTAL % |"

PR_COMMENT="$TABLE_MD"
gh pr comment $PR_NUMBER --body "$PR_COMMENT"