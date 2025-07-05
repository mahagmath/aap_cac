# Filebeat → OpenSearch Dummy Log Demo (Rancher Desktop)

This demo validates that Filebeat is properly shipping logs into OpenSearch by mounting a dummy log file using a Kubernetes ConfigMap.

## Components
- `ConfigMap`: Provides a static dummy log file at `/dummy/log.log`
- `Filebeat DaemonSet`: Reads log from the dummy path and sends it to OpenSearch
- `OpenSearch Service`: Must already be running and reachable inside the cluster

## Usage

```bash
kubectl apply -f dummy-log-configmap.yaml
kubectl apply -f filebeat-dummy.yaml
```

Then open OpenSearch Dashboards (e.g. http://localhost:30501) and create an index pattern for `filebeat-*`.
