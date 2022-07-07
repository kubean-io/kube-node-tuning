# Quick Start in China

If the machine is in China, you should replace the command to:

```
curl -L "http://ghproxy.com/https://raw.githubusercontent.com/DaoCloud/kube-node-tuning/main/hack/kube-node-tuning.yaml" | sed 's/image: alpine/image: docker.m.daocloud.io\/alpine/g' | kubectl apply -f -
```
