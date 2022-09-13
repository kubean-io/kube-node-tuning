# Quick Start in China

If the machine is in China, you should replace the command as below(to use registry mirror: docker.m.daocloud.io):

```
helm install -n kube-node-tuning kube-node-tuning kube-node-tuning/kube-node-tuning --create-namespace --set image.registry=docker.m.daocloud.io
```
