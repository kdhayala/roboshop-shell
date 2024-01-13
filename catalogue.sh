cp catalogue.service /etc/systemd/system/catalogue.service
cp mango.repo /etc/yum.repos.d/mango.repo
curl -sL https://rpm.nodesource.com/setub_lts.x | bash
yum install nodejs -y
useradd roboshop
mkdir /app
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
cd /app
unzip /tmp/catalogue.zip
cd /app
npm install

systemctl daemon-reload
systemctl enable catalogue
systemctl start catalogue