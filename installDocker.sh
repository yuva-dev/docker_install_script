set -e
### INSTALLING DOCKER
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER

### INSTALLING DOCKER COMPOSE
sudo curl -L https://github.com/docker/compose/releases/download/v2.20.3/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo mv /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose

## The following command are for docker command shortcuts
cd ~
cp .bashrc .bashrc.bac
echo ""  >> .bashrc
echo "# Docker Command Shorcuts"  >> .bashrc
echo "alias dc='docker container'"  >> .bashrc
echo "alias di='docker image'"  >> .bashrc
echo "alias d='docker'"  >> .bashrc
