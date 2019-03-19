#!/bin/bash -x

mount -o remount,rw /

cd /tmp

curl -OL https://github.com/bi7jta/nano_hotspot_upgrade_gpio_fix/raw/master/rc.local_GPIO_3.4.17_BETA
  
chmod +x rc.local_GPIO_3.4.17_BETA

cp rc.local_GPIO_3.4.17_BETA /etc/rc.local

echo "Done, now reboot ..."
reboot


