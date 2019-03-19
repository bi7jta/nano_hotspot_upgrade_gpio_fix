#!/bin/bash -x

mount -o remount,rw /

cd /tmp

curl -OL https://github.com/bi7jta/nano_hotspot_upgrade_gpio_fix/raw/master/rc.local_3.4.17_BETA_pure

chmod +x rc.local_3.4.17_BETA_pure

cp rc.local_3.4.17_BETA_pure /etc/rc.local

echo "Done, now reboot ..."
reboot
