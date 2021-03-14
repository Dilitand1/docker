FROM postgres:12-alpine

ENV PGDATA=/var/lib/postgresql/data
ENV POSTGRES_PASSWORD=password

#Права не помогают, постгре перезаписывает права
#RUN chmod 777 /var/lib/postgresql/data

COPY *.sql /docker-entrypoint-initdb.d/

#Сначаал создаем волюм
#docker volume create --name gitlab-postgresql -d local
#docker build -f dockerfile -t testdoc .
#docker run --name postgres-0 -d -v gitlab-postgresql:/var/lib/postgresql/data -p 5435:5432  testdoc

#По идее надо так, но оказалось на винде с постгре так нельзя
#docker run --name postgres-0 -e POSTGRES_PASSWORD=password -d -p 5435:5432 -v C:/Users/Dilit/IdeaProjects/mydocker/postgreWithVolume/pgVolume:/var/lib/postgresql/data testdoc

#docker kill postgres-0
#docker logs postgres-0
#docker rm postgres-0
#docker rmi testdoc


