yum install nginx -yum

systemctl enable nginx
systemctl start nginx

rm -rf /usr/share/nginx/html/*

curl -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
