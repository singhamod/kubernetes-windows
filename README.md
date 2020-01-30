# Running Kubernetes on Windows

This document talks about how to get up and running with a single node Kubernetes cluster with logging (ELK) and monitoring(grafana, prometheus).

##High level architecture
![K8s Architecture](https://github.com/gamodg/k8s-local/blob/master/k8s-architecture.PNG?raw=true)

## Install Docker and enable Kubernetes
* Download [docker desktop](https://hub.docker.com/?overlay=onboarding) from docker hub
* Install on windows
* Go to settings
* Go to Advanced and provide atleast 2 CPU and 4 GB RAM
* Go to Kubernetes and apply as shown
![Settings](https://github.com/gamodg/k8s-local/blob/master/docker-settings-k8s.png?raw=true)
* Apply

## Enable logging and monitoring
### Logging
* To enable ELK logging stack run logging.bat
* The above batch file will create logging namespace and enable fluentd, elastic search and kibana
* Run kubectl get all -n logging
![Kibana](https://github.com/gamodg/k8s-local/blob/master/kibana.PNG?raw=true)
* As per above figure Kibana is running on port **30445**
* Go to [http://localhost:30445](http://localhost:30445) and Kibana should open up

### Monitoring
* To enable prometheus and grafana stack run monitoring.bat
* The above batch file will create monitoring namespace and enable prometheus and grafana
* Run kubectl get all -n monitoring
![Grafana](https://github.com/gamodg/k8s-local/blob/master/grafana.PNG?raw=true)
* As per above figure Grafana is running on port **32426**
* Go to [http://localhost:32426](http://localhost:32426) and Grafana should open up
* Loging using admin/admin


## License
[MIT](https://choosealicense.com/licenses/mit/)
