# Quick Start in China

If the machine is in China, you should replace the command to:

```
helm upgrade --install -n kube-node-tuning kube-node-tuning charts/ --create-namespace --set image.registry=docker.m.daocloud.io
```
