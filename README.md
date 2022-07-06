# kube-node-tuning

kube-node-tuning is aimed at

* tuning the kernel settings of the node by kubernetes

## Quick Start

```
kubectl apply -f https://raw.githubusercontent.com/DaoCloud/kube-node-tuning/main/hack/kube-node-tuning.yaml
```

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
kubectl -n kube-node-tuning edit cm/sysctl-config -o yaml

# Restart the DaemonSet
kubectl -n kube-node-tuning rollout restart ds kube-node-tuning
```


## Roadmap

* Different OS Support. (Ubuntu, CentOS, RHEL, etc.)
* Multi profile
* Operator instead of Saemonset
