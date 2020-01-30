@echo off

echo 'K8s: clean up'
call kubectl delete -f  configs\ >NUL

echo 'Reverse Proxy: stop'
call tasklist | find /i "nginx.exe" && taskkill /im nginx.exe /F >NUL

echo 'Logging: cleanup'
call kubectl delete namespace logging >NUL
call kubectl delete -f  logging\ >NUL

echo 'Monitoring: cleanup'
call kubectl delete namespace monitoring >NUL

echo 'K8s: redis'
call kubectl delete -f  redis\ >NUL