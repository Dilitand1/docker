#ubuntu with simple java service
docker build -f Dockerfile_java -t ubuntu_java_test .
docker run -i -p 3333:8080 -t ubuntu_java_test

#запускаем
http://localhost:3333/

#simle ubuntu
docker build -f Dockerfile_ubuntu -t ubuntu_test .
docker run -i -p 6080:8080 -t ubuntu_test /bin/bash