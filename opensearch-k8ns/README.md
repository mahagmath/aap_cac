#Create    
# OpenSearch Cluster on Kubernetes
# This script sets up an OpenSearch cluster on Kubernetes
(base) maha@Mac opensearch-k8ns % kubectl get namespaces          
NAME              STATUS   AGE
default           Active   3d19h
kube-node-lease   Active   3d19h
kube-public       Active   3d19h
kube-system       Active   3d19h
monitoring        Active   3d9h
rook-nfs          Active   3d15h
rook-nfs-system   Active   3d15h
slurm             Active   3d16h
staging           Active   3d19h
(base) maha@Mac opensearch-k8ns % kubectl create namespace logging

namespace/logging created
(base) maha@Mac opensearch-k8ns % kubectl get namespaces          
NAME              STATUS   AGE
default           Active   3d19h
kube-node-lease   Active   3d19h
kube-public       Active   3d19h
kube-system       Active   3d19h
logging           Active   4s
monitoring        Active   3d9h
rook-nfs          Active   3d15h
rook-nfs-system   Active   3d15h
slurm             Active   3d16h
staging           Active   3d19h
#Create opensearch statefulset
(base) maha@Mac opensearch-k8ns % kubectl apply -f opensearch.yaml

statefulset.apps/opensearch created
(base) maha@Mac opensearch-k8ns % kubectl get statefulsets -n logging