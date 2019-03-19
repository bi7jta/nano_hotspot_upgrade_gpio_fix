### Purpose：   
Fix GPIO15/GPIO16 case MMDVM HAT STM32 reset issue, in some NanoPi NEO device.   

### What cause this reason：   
In some NanoPi NEO, GPIO 15/16 output unstable high-level voltage , let the STM32 reset when bootup.  
### Solution：  
Add recovery reset operation when bootup complete  

### How to do?  
Enter ssh mode  
http://pi-star:2222  
Login:  pi-star  
Pass： raspberry   

#### Fix GPIO not release the RESET status   

for Pi-Star V3.4.16  

```
rpi-rw;  
curl -OL https://github.com/bi7jta/nano_hotspot_upgrade_gpio_fix/raw/master/rc_gpio_fix.sh;  
sudo chmod +x rc_gpio_fix.sh;   
sudo ./rc_gpio_fix.sh;    
```
Verify if replace  
``` 
cat /etc/rc.local  
mount -o remount,rw /  
echo 3 > /sys/class/gpio/export  
echo out > /sys/class/gpio/gpio3/direction  
echo 1 > /sys/class/gpio/gpio3/value  
echo 3 > /sys/class/gpio/unexport  
mount -o remount,ro /  
``` 
NOTE: rc.local file base on v3.4.16    

for Pi-Star V 3.4.17_BETA and later version  
```
rpi-rw;  
curl -OL https://github.com/bi7jta/nano_hotspot_upgrade_gpio_fix/raw/master/rc_GPIO_fix_3.4.17_BETA.sh;  
sudo chmod +x rc_GPIO_fix_3.4.17_BETA.sh;   
sudo ./rc_GPIO_fix_3.4.17_BETA.sh;    
```
NOTE: rc.local file base on v3.4.17_BETA  

 
#### Recovery this file to original   
 
for Pi-Star V3.4.16  
```
rpi-rw;
curl -OL https://github.com/bi7jta/nano_hotspot_upgrade_gpio_fix/raw/master/rc_pure.sh;
sudo chmod +x rc_pure.sh;
sudo ./rc_pure.sh;
```

for Pi-Star V 3.4.17_BETA and later version  
```
rpi-rw;
curl -OL https://github.com/bi7jta/nano_hotspot_upgrade_gpio_fix/raw/master/rc_3.4.17_BETA_pure.sh;
sudo chmod +x rc_3.4.17_BETA_pure.sh;
sudo ./rc_3.4.17_BETA_pure.sh;
```

Still have problem, contact bi7jta@gmail.com or 
Facebook IM https://www.facebook.com/winters.cn  
BLOG https://mmdvm.bi7jta.org  
