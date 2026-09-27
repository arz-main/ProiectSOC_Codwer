install k3s:
curl -sfL https://get.k3s.io | sh -

create the image from the Dockerfile
docker build -t vuln-node .

import the image into k3s
docker save vuln-node:latest | k3s ctr images import -

generate the certs
bash wazuh-kubernetes/wazuh/certs/indexer_cluster/generate_certs.sh 

deploy the wazuh app
kubectl apply -f wazuh-kubernetes/wazuh/

deploy the vulnerable app
kubectl apply -f vuln-node-manifest.yml
