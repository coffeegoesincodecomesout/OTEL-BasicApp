# TestApp-Ping-OTEL - I use this to demonstrate OTEL instrumentation

### Instructions

1. Ensure the Red Hat Build of OpenTelemetry operator is installed on your cluster

2. Create a namespace, launch deployment, create service and route.

```
$ oc apply -f otel-deploy.yaml
$ oc apply -f expose.yaml
```

3. Create namespace for OTEL collector, ServiceAccount, ClusterRole, ClusterRoleBinding, and the Collector (as a deployment).

```
$ oc apply -f otel-sa.yaml
$ oc apply -f otel-rolebinding.yaml
$ oc apply -f otel-collector.yaml
```
