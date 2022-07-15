

#https://www.suse.com/zh-cn/support/kb/doc/?id=000020005

```
 /opt/cloudera/parcels/ECS-1.4.0-b2677-ecs-1.4.0-b2677.p0.28335028/docker/ctr \
--address=/run/k3s/containerd/containerd.sock \
--namespace=k8s.io images list | grep nginx-ingress-controller
```
