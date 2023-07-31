sudo apt update
sudo apt full-upgrade -y
sudo timedatectl set-timezone Asia/Dhaka
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker $USER
rm get-docker.sh
sudo reboot