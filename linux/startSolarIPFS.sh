kill $(ps aux | grep 'watch.sh' | awk '{print $2}')
value=`cat $HOME/.ipfs/subscription.key`
curl 'https://solarbankersico.com/SolarNode_Service.svc/JSON/Configure/'$value;
chmod -R 777 subscription.sh
chmod -R 777 watch.sh
nohup ./watch.sh >/dev/null &
solaripfs daemon
