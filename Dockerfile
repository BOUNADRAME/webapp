FROM ubuntu
LABEL key="dstechs" key2="bounafode@gmail.com"
# MAINTAINER dirane (bounafode@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
# ADD static-website-example/ /var/www/html
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example /var/www/html
ENTRYPOINT ["nginx", "-g", "daemon off;"]
