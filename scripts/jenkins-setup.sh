#!/bin/bash

echo "Init Jenkins Setup " 
sudo yum update  -y
echo "Add the Jenkins repo"
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
echo "Importing Jenkins Key"
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
echo "Installing Amazon Linux Extras"
sudo yum install -y amazon-linux-extras
echo " Installing OpenJDK-11 and JAVA"
sudo amazon-linux-extras install java-openjdk11 -y
sudo dnf install java-11-amazon-corretto -y
echo "Installing Jenkins"
sudo yum install jenkins -y
echo "Enable the Jenkins service"
sudo systemctl enable jenkins
echo "Starting Jenkins"
sudo systemctl start jenkins
echo "Done"

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