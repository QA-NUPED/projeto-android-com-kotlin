PRODUCT=$("Stone Benefícios" "Giro Stone" "Acompanhamento de TPV" "Autocred" "Member Get Member")


TABLE_MD="## SMB COVERAGE
| **Product** | **Branches** | **Class** | **Lines** | **TOTAL** |
|---------------|-----------|-----------|------------|------------|
| $PRODUCT  | $BRANCH % | $FUNCTIONS % | $LINES % | $TOTAL % |"

PR_COMMENT="$TABLE_MD"
gh pr comment $PR_NUMBER --body "$PR_COMMENT"