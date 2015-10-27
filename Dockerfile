FROM ubuntu:latest
ENV http_proxy http://fr0-vsiaas-649:3128
ENV https_proxy  http://fr0-vsiaas-649:3128

MAINTAINER julien.senon@gmail.com	

RUN apt-get update && apt-get install -y squid3
ADD squid.conf /etc/squid3/squid.conf
# Make cache dirs 
RUN squid3 -z -F

EXPOSE 3128

# -X verbose debug logging
# -N Don't run in daemon mode - important for docker
CMD squid3 -N -X

