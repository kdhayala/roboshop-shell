cp mongo.repo /etc/yum.repos.d/mongo.repo
yum install mongo-org -y

##update listen address from 127.0.0.1 to 0.0.0.0

systemctl enable mongod
systemctl start mongod