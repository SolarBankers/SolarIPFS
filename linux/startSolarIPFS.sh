kill $(ps aux | grep 'watch.sh' | awk '{print $2}')
chmod -R 777 subscription.sh
chmod -R 777 watch.sh
nohup ./watch.sh >/dev/null &
solaripfs daemon
