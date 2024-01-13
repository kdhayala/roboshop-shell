cp user.service /etc/systemd/system/user.service
cp mango.repo /etc/yum.repos.d/mango.repo
curl -sL https://rpm.nodesource.com/setub_lts.x | bash
yum install nodejs -y
useradd roboshop
mkdir /app
curl -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/user.zip
cd /app
unzip /tmp/user.zip
cd /app
npm install

systemctl daemon-reload
systemctl enable user
systemctl start user