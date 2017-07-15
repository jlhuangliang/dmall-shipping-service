FROM java:8
VOLUME /tmp

ADD build/libs/product-service-*.jar /work/app.jar
ADD run.sh /

ENTRYPOINT ["/run.sh"]
