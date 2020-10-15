echo "Installing Docker"

# Ofc, Always Update
# Before Anything Else
sudo apt update -y
sudo apt upgrade -y

# Package Needed
sudo apt-get install curl apt-transport-https ca-certificates software-properties-common

# Add Docker Repo
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y

# Installing Docker-ce
sudo apt install docker-ce

# Adding TO Docker Group
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Test If Docker Could Running
# Withour `sudo`
docker run hello-world

echo "Installing Docker-Compose"

# Download Current Stable
# Release Of Docker-Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Test Installation
docker-compose --version

echo "Script Is Done, Have A Nice Day!"

