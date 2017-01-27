FROM openjdk:8u111-jdk
RUN groupadd -r mule && useradd -r -g mule mule
RUN mkdir -p /opt/mule
ADD mule-docker.sh /opt/mule/mule-docker.sh
RUN chown -R mule:mule /opt/mule
USER mule
EXPOSE 7777
EXPOSE 8080-8090
RUN sh -c 'touch /opt/mule/mule-docker.sh'
RUN chmod +x /opt/mule/mule-docker.sh
ENTRYPOINT ["/opt/mule/mule-docker.sh"]