api_key=9775a026f1ca7d1c6c5af9d94d9595a4
app_key=87ce4a24b5553d2e482ea8a8500e71b8ad4554ff

curl -X POST -H "Content-type: application/json" \
-d '{
        "name": "My Dashboard List"
}' \
"https://api.datadoghq.com/api/v1/dashboard/lists/manual?api_key=${api_key}&application_key=${app_key}"