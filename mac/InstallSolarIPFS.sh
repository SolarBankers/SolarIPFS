cd ~
curl https://dist.ipfs.io/go-ipfs/v0.4.19/go-ipfs_v0.4.19_linux-amd64.tar.gz
tar xvfz go-ipfs_v0.4.19_linux-amd64.tar.gz
rm -rf go-ipfs_v0.4.19_linux-amd64.tar.gz
cd go-ipfs
sudo ./install.sh
sudo rm -rf /usr/local/bin/ipfs
cd ~
chmod -R 777 solaripfs
sudo mv solaripfs /usr/local/bin
solaripfs version
export LIBP2P_FORCE_PNET=1 
solaripfs init
solaripfs bootstrap rm --all
solaripfs bootstrap add /ip4/45.33.27.17/tcp/4002/ipfs/Qme3NTDKrcr6hQPg5Loegr1EabvdCuDYrMy6tFzLBbS93D
solaripfs bootstrap add /ip4/139.162.161.41/tcp/4001/ipfs/Qmc17HvN4c8k6xz8GXmwV1V5uAcsc8RWJwMyDtoqn3vGK6
solaripfs bootstrap add /ip4/172.104.52.230/tcp/4001/ipfs/QmSTqbkiePMmJuJ31xSppPUcfFzqiEuFd4teJY7GqXHZQ5
solaripfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
solaripfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "GET", "POST"]'