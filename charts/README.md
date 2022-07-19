# kube-node-tuning

kube-node-tuning is aimed at kernel tuning by kubernetes. It's useful to :

* High performance application
* Large Scale Cluster
* Network Tuning

## Quick Start

```
export VERSION=v0.1.0
helm repo add kube-node-tuning http://kubean-io.github.io/kube-node-tuning/
helm install -n kube-node-tuning kube-node-tuning kubean-io/kube-node-tuning --create-namespace

```

Tips: If the machine is in China, you should following by: [quick-start-in-china](docs/quick-start-in-china.md)

The kernel's sysctl settings are applied to the node at /etc/99-kube-node-tuning.conf.

Check if the settings are applied by the following command.
SSH to the node of cluster

```
cat /etc/sysctl.d/99-kube-node-tuning.conf
sysctl -a # view the sysctl setting
```

## Configuration

```
# Change the config
kubectl -n kube-node-tuning edit cm/kube-node-tuning-config -o yaml

# Restart the DaemonSet
kubectl -n kube-node-tuning rollout restart ds kube-node-tuning
```


## Roadmap

* Different OS Support. (Ubuntu, CentOS, RHEL, etc.)
* Multi profile
* Operator instead of Daemonset
