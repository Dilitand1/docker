FROM openjdk:15.0
COPY cert/tengri_ift.cer tengri_ift.cer
COPY entrypoint.sh entrypoint.sh

RUN keytool -importcert -file tengri_ift.cer -alias tengri_ift -cacerts -storepass changeit -noprompt

ENTRYPOINT ["sh", "entrypoint.sh"]
EXPOSE 8991