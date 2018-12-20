mount -o remount,rw /

cd /tmp

curl -OL https://github.com/bi7jta/nano_hotspot_upgrade_gpio_fix/raw/master/rc.local_pure

chmod +x rc.local_pure

cp rc.local_pure /etc/rc.local

reboot
