#!/bin/bash -x

mount -o remount,rw /

cd /tmp

curl -OL https://github.com/bi7jta/nano_hotspot_upgrade_gpio_fix/raw/master/rc.local_gpio_fix
  
chmod +x rc.local_gpio_fix

cp rc.local_gpio_fix /etc/rc.local

echo "Done, now reboot ..."
reboot


