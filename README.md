To launch a website to webserver ec2 instance
first create a ec2 instance on AWS or other cloud platforms(GCP=compute engine, Azure=Virtual machine)(use linux as image)
after login to ec2 become root user by (sudo su - ) 
yum install httpd - y  (httpd=webserver,thats helps to deploy our website, y = yes )
service httpd status (shows off )
service httpd start ( to start httpd webserver)
service httpd status (shows its on)

Time to install git ( To clone the website code )(its without -y so ask you for permission so press y when it ask)
yum install git (command to install git )
git clone "link of repo you want to clone" (clone this DevOps-Website click on code and you will get the link,this is public repo so account not needed)
ls (see its cloned)
cd DevOps-WebSite 
ls (can see the files)
cp file name /var/www/html (copy all the files to html location)
cp -r dirname /var/wwww/html (-r helps to copy directories)
cd /var/www/html 
ls (check copies files)

for acces the webiste paste public ip of ec2 in your browser before than edit inbound rules add port 80 httpd run on this port.
At last terminate the ec2


