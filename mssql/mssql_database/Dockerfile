FROM microsoft/mssql-server-linux:2017-latest

COPY *.sql /docker-entrypoint-initdb.d/
COPY entrypoint.sh /docker-entrypoint-initdb.d/
COPY import-data.sh /docker-entrypoint-initdb.d/

#CMD /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Super_puper_password -d master -i /docker-entrypoint-initdb.d/setup.sql

#Ставим обновления и меняем формат файлов на тип юникса если будут ошибки в файлах типа \r
#RUN apt-get -y update  && \
#    apt-get install -y dos2unix
#RUN dos2unix /docker-entrypoint-initdb.d/entrypoint.sh
#RUN dos2unix /docker-entrypoint-initdb.d/import-data.sh

#Даем права на энтрипоинт
RUN chmod +x /docker-entrypoint-initdb.d/entrypoint.sh
RUN chmod +x /docker-entrypoint-initdb.d/setup2.sql
RUN chmod +x /docker-entrypoint-initdb.d/setup.sql

#Говорим докеру запустить наш энтрипоинт
#ENTRYPOINT /bin/bash /docker-entrypoint-initdb.d/import-data.sh
ENTRYPOINT /bin/bash /docker-entrypoint-initdb.d/entrypoint.sh
