FROM java:7-jre
RUN wget -q http://nilhcem.github.com/FakeSMTP/downloads/fakeSMTP-latest.zip && unzip fakeSMTP-latest.zip -d /opt && rm fakeSMTP-latest.zip
EXPOSE 25
VOLUME ["/var/mail"]

CMD java -jar /opt/fakeSMTP-1.13.jar -s -b -o /var/mail
