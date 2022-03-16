1.Устанавливаем все из install.png
2.Прописываем в path куда скачали kubectl.exe и minikube.exe, напр. C:\kubernetes
3.Запускаем minikube start
4.Запускам поду kubectl run hello --image=dilitand/java:latest --port=3333


Входим в под(hello - имя пода):
exec -it hello sh
Перенаправляем внутренний порт машины на порт ноды (EXPOSE 8080 - в докерфайле):
kubectl port-forward hello 7788:8080
Смотрим данные пода:
kubectl describe pods podName

Запускаем yaml:
kubectl apply -f C:\Users\Dilit\IdeaProjects\docker\k8s\minimal_yaml.yaml

Удаляем под:
kubectl delete pods hello
kubectl delete -f C:\Users\Dilit\IdeaProjects\docker\k8s\minimal_yaml.yaml

Запуск нескольких нод: minikube start --nodes 2 -p multinode-demo
Запуск деплоймента: kubectl create deployment dimas-deploy --image dilitand/java:latest

Скейлинг на несколько (4) нод: kubectl scale deploy dimas-deploy --replicas 4
Пример автоскейлинга kubectl: autoscale deployment dimas-deploy --min=4 --max=6 --cpu-percent=80
Проверить: kubectl get hpa

Посмотреть версии имаджей:
kubectl rollout history deployment/dimas-deploy
Изменить версию image:
kubectl set image deployment/dimas-deploy java=dilitand/java:latest --record
Откатить версию image на одну (--to-revision=4 - выбрать версию):
kubectl rollout undo deployment/dimas-deploy
Обновить версию из докерхаба(если вдруг обновилась)
kubectl rollout status deployment/dimas-deploy