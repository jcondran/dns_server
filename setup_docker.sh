### Mint Linux ###

sudo apt-get update
# sudo apt-get upgrade




sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo apt-get install python3-pip
pip3 install docker-compose

# Requies terminal restart to work
sudo usermod -aG docker $USER




# Modern releases of Ubuntu (17.10+) include systemd-resolved which is configured by default to implement a caching DNS stub resolver. This will prevent pi-hole from listening on port 53. The stub resolver should be disabled with:
sudo sed -r -i.orig 's/#?DNSStubListener=yes/DNSStubListener=no/g' /etc/systemd/resolved.conf

# This will not change the nameserver settings, which point to the stub resolver thus preventing DNS resolution.
# Change the /etc/resolv.conf symlink to point to /run/systemd/resolve/resolv.conf, which is automatically updated to follow the systems netplan:
sudo sh -c 'rm /etc/resolv.conf && ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf'

# After making these changes, you should restart systemd-resolved using
systemctl restart systemd-resolved
