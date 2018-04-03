api_key=9775a026f1ca7d1c6c5af9d94d9595a4
app_key=87ce4a24b5553d2e482ea8a8500e71b8ad4554ff
monitor_id=59409

# Create a monitor to delete
monitor_id=$(curl -X POST -H "Content-type: application/json" \
-d '{
      "type": "metric alert",
      "query": "avg(last_5m):sum:system.net.bytes_rcvd{host:host0} > 100",
      "name": "Bytes received on host0",
      "message": "We may need to add web hosts if this is consistently high."
  }' \
    "https://api.datadoghq.com/api/v1/monitor?api_key=${api_key}&application_key=${app_key}" | jq '.id')

curl -X DELETE "https://api.datadoghq.com/api/v1/monitor/${monitor_id}?api_key=${api_key}&application_key=${app_key}"