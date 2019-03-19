sudo rm -rf /usr/local/go
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y curl git mercurial make binutils gcc bzr bison libgmp3-dev screen gcc build-essential
cd ~
export GOV=1.11.5 # golang version
curl -sS https://storage.googleapis.com/golang/go$GOV.linux-amd64.tar.gz > go$GOV.linux-amd64.tar.gz
tar xvf go$GOV.linux-amd64.tar.gz
rm go$GOV.linux-amd64.tar.gz
sudo mv go /usr/local/go
sudo ln -s /usr/local/go/bin/go /usr/local/bin/go
sudo ln -s /usr/local/go/bin/godoc /usr/local/bin/godoc
sudo ln -s /usr/local/go/bin/gofmt /usr/local/bin/gofmt
mkdir -p $HOME/go
mkdir -p $HOME/go/bin
mkdir -p $HOME/go/src
mkdir -p $HOME/go/pkg
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
go version

cd ~
wget https://dist.ipfs.io/go-ipfs/v0.4.19/go-ipfs_v0.4.19_linux-amd64.tar.gz
tar xvfz go-ipfs_v0.4.19linux-amd64.tar.gz
rm -rf go-ipfs_v0.4.19_linux-amd64.tar.gz
cd go-ipfs
sudo ./install.sh
rm /usr/local/bin/ipfs
chmod -R 777 solaripfs
mv solaripfs /use/local/bin
solaripfs version
export LIBP2P_FORCE_PNET=1 
solaripfs init
solaripfs bootstrap rm --all
solaripfs bootstrap add /ip4/45.33.27.17/tcp/4002/ipfs/Qme3NTDKrcr6hQPg5Loegr1EabvdCuDYrMy6tFzLBbS93D
