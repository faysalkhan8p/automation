sudo apt update
sudo apt upgrade -y
sudo timedatectl set-timezone Asia/Dhaka
sudo apt install build-essential -y
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker $USER
sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer \
    --restart=unless-stopped \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v ~/docker/portainer:/data \
    cr.portainer.io/portainer/portainer-ce
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
