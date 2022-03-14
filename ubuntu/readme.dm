Сначаал создаем волюм
#docker volume create --name ubuntuVol -d local
#-p 6080:6080
docker build  -f Dockerfile -t ubuntu_test .
docker run -i -p 6080:6080 -t ubuntu_test /bin/bash



