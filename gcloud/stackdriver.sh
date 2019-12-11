gcloud --project $1 logging \
    read "$2" \
    --format json | \
    jq '{timestamp: .[].timestamp, severity: .[].severity, function_name: .[].resource.labels.function_name, payload: .[].textPayload|fromjson}'