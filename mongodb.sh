cp mongo.repo /etc/yum.repos.d/mongo.repo
yum install mongo-org -y

##update listen address from 127.0.0.1 to 0.0.0.0

sed -i 's/127.0.0.1/0.0.0.0' /etc/mangod.conf

systemctl enable mongod
systemctl start mongod