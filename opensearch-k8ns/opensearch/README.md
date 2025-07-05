Id u get the crashloopbacklimit
[]: # NAME         READY   AGE
[]: # opensearch   0/3     2s
[]: # (base) maha@Mac opensearch-k8ns % kubectl get pods -n logging
[]: # NAME              READY   STATUS             RESTARTS   AGE
[]: # opensearch-0     0/1     CrashLoopBackOff   0          2s
[]: # opensearch-1     0/1     CrashLoopBackOff   0          2s
[]: # opensearch-2     0/1     CrashLoopBackOff   0          2s
[]: # (base) maha@Mac opensearch-k8ns % kubectl describe pod opensearch-0 -n logging
[]: # Name:         opensearch-0
[]: # Namespace:    logging
[]: # Priority:     0
[]: # N