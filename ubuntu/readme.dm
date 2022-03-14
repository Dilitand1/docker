Сначаал создаем волюм
#docker volume create --name ubuntuVol -d local
docker build -f Dockerfile -t ubuntu_test .
docker run -i -p 3333:8080 -t ubuntu_test /bin/bash

#запускаем
http://localhost:3333/