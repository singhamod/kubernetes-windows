@echo off

REM https://github.com/bakins/minikube-prometheus-demo

SET DIR=monitoring

echo 'Namespace: create namespace monitoring'
call kubectl apply -f  %DIR%\monitoring-namespace.yaml >NUL

echo 'Prometheus: config'
call kubectl apply -f %DIR%\prometheus-config.yaml  >NUL

echo 'Prometheus: deployment'
call kubectl create -f %DIR%\prometheus-deployment.yaml  >NUL

echo 'Prometheus: service'
call kubectl apply -f %DIR%\prometheus-service.yaml  >NUL

echo 'Graphana: deployment'
call kubectl apply -f %DIR%\grafana-deployment.yaml  >NUL

echo 'Graphana: service'
call kubectl apply -f %DIR%\grafana-service.yaml  >NUL

echo 'NodeExporter: deamonset'
call kubectl apply -f %DIR%\node-exporter-daemonset.yml  >NUL

REM Grafana http://localhost:31827/
REM Prometheus http://localhost:9090
REM Query sum(container_memory_usage_bytes) by (pod_name)