Скачиваем и устанавливаем:
minikube
kubectl
docker

# Запускаем кубер
https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/
1. Start docker.
2. Start minikube in cmd/terminal: minikube start
3. В винде если зависает на Creating docker container (CPUs=2, Memory=7909MB) ... 
То можно попробовать:
   1. отключить брандмауэр. 
   2. Отключить hyperv "bcdedit /set hypervisorlaunchtype off". 
   3. Запускать через Virtual box --vm-driver="virtualbox" 
   4. Использовать прокси при необходимости
         Пример запуска с прокси:
         set HTTP_PROXY=http://login:password@ip:port
         set HTTPS_PROXY=https://ErTMrd:sttt2Z@185.240.93.249:8000
         set NO_PROXY=192.168.59.101

## Разработка

### 1. Проверяем environments

2. Define a Command and Arguments for a Container
kubectl apply -f .\k8s\example_2_kuber\pods\commands_1.yaml
kubectl apply -f .\k8s\example_2_kuber\pods\commands_2.yaml
3. kubectl get pods
4. kubectl logs command-demo
kubectl apply -f .\k8s\example_2_kuber\pods\dependent-envars-demo.yaml
5. kubectl logs dependent-envars-demo
6. kubectl delete dependent-envars-demo
