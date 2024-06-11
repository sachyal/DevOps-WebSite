# Pulling th Base Image - Requirement is To Deploy an Ubuntu platform 
FROM ubuntu 
# Setting Up the Working Directory - Create a Work Directory using WORKDIR 
WORKDIR /app 
# To Update the Ubuntu OS To Load the Packages 
RUN apt-get update -y 
# Install Apache2 WebServer To Deploy a Web Application 
RUN apt-get install apache2 -y 
#Copy a Code From Loacal Machine to Inside the default Directory of the server 
COPY . /app 
COPY . /var/www/html 
# Start Apache Web Server 
ENTRYPOINT apachectl -D FOREGROUND 