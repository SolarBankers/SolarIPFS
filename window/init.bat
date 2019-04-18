@echo off 
set LIBP2P_FORCE_PNET=1 
solaripfs init
solaripfs config --json API.HTTPHeaders.Access-Control-Allow-Origin "[\"http://127.0.0.1:5001\", \"*\"]"
solaripfs config --json API.HTTPHeaders.Access-Control-Allow-Methods "[\"PUT\", \"GET\", \"POST\"]"
solaripfs bootstrap rm --all
solaripfs bootstrap add /ip4/45.33.27.17/tcp/4002/ipfs/Qme3NTDKrcr6hQPg5Loegr1EabvdCuDYrMy6tFzLBbS93D
solaripfs bootstrap add /ip4/139.162.161.41/tcp/4001/ipfs/Qmc17HvN4c8k6xz8GXmwV1V5uAcsc8RWJwMyDtoqn3vGK6
solaripfs bootstrap add /ip4/172.104.52.230/tcp/4001/ipfs/QmSTqbkiePMmJuJ31xSppPUcfFzqiEuFd4teJY7GqXHZQ5
echo "Done!"