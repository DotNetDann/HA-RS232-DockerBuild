FROM homeassistant/home-assistant:latest

#RUN apt-get update \
#&& apt-get install -y --no-install-recommends socat
RUN apk add socat


COPY ["startup.sh", "/usr/startup.sh"]
RUN chmod +x /usr/startup.sh

ENTRYPOINT ["/usr/startup.sh"]
