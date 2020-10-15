echo "Installing Docker"

# Ofc, Always Update
# Before Anything Else
echo "=== Running apt update & upgrad ==="
sudo apt update -y
sudo apt upgrade -y

# Package Needed
echo "=== Adding Necessary Package ==="
sudo apt-get install curl apt-transport-https ca-certificates software-properties-common -y

# Add Docker Repo
echo "=== Adding Docker Repository ==="
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y

# Installing Docker-ce
echo "=== Installing docker-ce ==="
sudo apt install docker-ce -y

# Adding TO Docker Group
echo "=== Adding Current User To Docker Group ==="
sudo usermod -aG docker $USER
newgrp docker

# Install Docker Compose With apt
echo "=== Installing docker-compose with apt ==="
sudo apt install docker-compose

echo "Script Is Done, Have A Nice Day!"
