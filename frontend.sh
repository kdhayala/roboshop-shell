echo "Installing the nginx"
yum install nginx -y

echo "copy the nginx"
cp nginx-roboshop.conf  /etc/nginx/default.d/roboshop.conf

echo "remove the  html file"

rm -rf /usr/share/nginx/html/*

echo "Download the application content "
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip

echo "switching the directory"
cd /usr/share/nginx/html

echo "unzip the application content"
unzip /tmp/frontend.zip

systemctl enable nginx
systemctl restart nginx
