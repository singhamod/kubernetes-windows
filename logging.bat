@echo off

REM https://mherman.org/blog/logging-in-kubernetes-with-elasticsearch-Kibana-fluentd/

SET LOG=logging

echo %LOG%

echo 'Logging: create namespace logging'
call kubectl create -f  %LOG%\ns-logging.yaml >NUL

echo 'ElasticSearch: create'
call kubectl create -f %LOG%\elastic.yaml -n logging  >NUL

echo 'Kibana: create'
call kubectl create -f %LOG%\kibana.yaml -n logging  >NUL


echo 'Fluentd: rbac'
call kubectl create -f %LOG%\fluentd-rbac.yaml  >NUL

echo 'Kibana: daemonset'
call kubectl create -f %LOG%\fluentd-daemonset.yaml  >NUL

