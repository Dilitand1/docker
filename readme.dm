Удалить все остановленные (неиспользуемые) Docker-контейнеры:
docker container prune -f

Удалить все образы:
for /F %i in ('docker images -a -q') do docker rmi -f %i

Войти в контейнер:
docker exec -it 26fac6ca2e79 bash

Запуск компоуза в фоне
docker-compose up -d --build 
