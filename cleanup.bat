@echo off

echo 'Logging: cleanup'
call kubectl delete namespace logging >NUL
call kubectl delete -f  logging\ >NUL

echo 'Monitoring: cleanup'
call kubectl delete namespace monitoring >NUL

echo 'K8s: redis'
call kubectl delete -f  redis\ >NUL
