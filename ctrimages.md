

#https://www.suse.com/zh-cn/support/kb/doc/?id=000020005

```
 /opt/cloudera/parcels/ECS-1.4.0-b2677-ecs-1.4.0-b2677.p0.28335028/docker/ctr \
--address=/run/k3s/containerd/containerd.sock \
--namespace=k8s.io images list | grep nginx-ingress-controller
```

Example result:
```
docker.io/rancher/nginx-ingress-controller:nginx-1.0.2-hardened4                                                                                        application/vnd.docker.distribution.manifest.v2+json sha256:0d1bc596919680a2ccadcc38f98076f87637e4959c416260c789eb9c3091e4df 561.9 MiB linux/amd64 io.cri-containerd.image=managed
```
