COVERAGE_REQUIRED= "
[
    {
        "Product": "StoneBenefits",
        "branches": 20,
        "class": 30,
        "lines": 30
    },
    {
        "Product": "GiroStone",
        "branches": 20,
        "class": 30,
        "lines": 30
    },
    {
        "Product": "AcompanhamentoDeTPV",
        "branches": 20,
        "class": 30,
        "lines": 30
    },
    {
        "Product": "Autocred",
        "branches": 20,
        "class": 30,
        "lines": 30
    },
    {
        "Product": "MGM",
        "branches": 20,
        "class": 30,
        "lines": 30
    }
]
"
PRODUCT=$(echo "$COVERAGE_REQUIRED" | jq -r '.[].Product')

TABLE_MD="## SMB COVERAGE
| **Product** | **Branches** | **Class** | **Lines** | **TOTAL** |
|---------------|-----------|-----------|------------|------------|
| $PRODUCT  | $BRANCH % | $FUNCTIONS % | $LINES % | $TOTAL % |"

PR_COMMENT="$TABLE_MD"
gh pr comment $PR_NUMBER --body "$PR_COMMENT"