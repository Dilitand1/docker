FROM postgres:12-alpine

ENV PGDATA=/var/lib/postgresql/data
ENV POSTGRES_PASSWORD=password

#Права не помогают, постгре перезаписывает права
#RUN chmod 777 /var/lib/postgresql/data

COPY *.sql /docker-entrypoint-initdb.d/

#Сначаал создаем волюм
#docker volume create myVolume --opt type=none --opt device=C:\Users\Dilit\IdeaProjects\docker\postgreWithVolume\volume2 --opt o=bind
#docker build -f Dockerfile -t image_name .
#docker run --name postgres-3 -d -v myVolume:/var/lib/postgresql/data -p 5436:5433 image_name
#либо путь напрямую
#docker run --name postgres-0 -d -v C:\Users\Dilit\IdeaProjects\paima\volume:/var/lib/postgresql/data -p 5435:5432 image_name

#docker kill postgres-0
#docker logs postgres-0
#docker rm postgres-0
#docker rmi testdoc


