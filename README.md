# kube-node-tuning

kube-node-tuning is aimed at

* Tunning the kernel settings of the node by kubernetes

## Quick Start

```
git clone git@github.com:DaoCloud/kube-node-tuning.git
kubectl apply -f hack/kube-node-tunning.yaml
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
kubectl -n kube-node-tunning edit cm/sysctl-config -o yaml

# Restart the DaemonSet
kubectl -n kube-node-tunning rollout restart ds kube-node-tunning
```


## Roadmap

* Different OS Support. (Ubuntu, CentOS, RHEL, etc.)
* Multi profile
* Operator instead of Saemonset