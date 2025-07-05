<<<<<<< HEAD
# aap_cac
This AAP Config as COde
=======
# DTEX SRE OpenSearch & Ollama Log Ingestion Demo

This demo showcases:
- OpenSearch and OpenSearch Dashboards running locally via Docker Compose.
- Ingesting Ollama logs via Filebeat.
- Collecting system and OpenSearch metrics via Metricbeat.
- Best practices such as sharding awareness, observability, and SRE readiness.

## Folders

- `opensearch_dashboard/`: OpenSearch and Dashboards setup.
- `filebeat/`: Log shipper for Ollama logs.
- `metricbeat/`: Metrics collection for host + OpenSearch health.

---

## Quickstart

```bash
cd opensearch_dashboard
docker-compose up -d
```

Then in other terminals:

```bash
cd ../filebeat
docker-compose up
```

```bash
cd ../metricbeat
docker-compose up
```

Open http://localhost:5601 to view logs and metrics.
>>>>>>> 2a10f61 (Initial commit for AAP Configuration as Code)
