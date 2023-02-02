#script to run commands while launching ec2.
#-----------------------
#!/bin/bash

#Extra packages

apt-get install vim git -y

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
ls -l
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
amazon-linux-extras install epel
amazon-linux-extras install java-openjdk11
yum install epel-release
yum install java-11-openjdk-devel
yum install jenkins
service jenkins start
systemctl enable jenkins
chkconfig jenkins on