# Filebeat for Ollama Logs

This setup ships logs from the Ollama runtime to OpenSearch.

## Steps

- Mounts the Ollama log directory from your Mac.
- Uses Filebeat's Docker image.
- Sends logs to OpenSearch running locally.

## Run

```bash
docker-compose up
```

Ensure you update `filebeat.yml` with correct log path and OpenSearch endpoint.
