Удалить все остановленные (неиспользуемые) Docker-контейнеры:
docker container prune -f

Удалить все образы:
for /F %i in ('docker images -a -q') do docker rmi -f %i

Создать image:
docker build -f Dockerfile_java -t ubuntu_java_test .
Запустить image:
docker run -i -p 3333:8080 -t ubuntu_java_test

Войти в контейнер (-it - интерактивно (чтобы видеть процесс)):
docker exec -it 26fac6ca2e79 bash

Запуск компоуза в фоне
docker-compose up -d --build

#важные команды:
Порт который будет прокидываться из докера на компьютер (прописывается в докерфайле): EXPOSE 8080
Порт на компьютере 6080, порт на докере 8080 (прописывается при запуске контейнера): -p 6080:8080
Указать имя докеримэдж: -t imagename .
Посмотреть все контейнеры: docker ps -a
Посмотреть все image: docker images