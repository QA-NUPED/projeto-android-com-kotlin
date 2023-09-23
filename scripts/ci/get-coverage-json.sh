JSON_CONTENT=$(cat ./coverage.json)
echo "JSON_CONTENT=$JSON_CONTENT" >> $GITHUB_OUTPUT

# chmod +x get-coverage-json.sh