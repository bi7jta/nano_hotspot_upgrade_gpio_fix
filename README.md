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
PASS： raspberry   

### Method 1th (recommand)：
Use (Ctrl+C and Ctrl+V)   
rpi-rw;  
curl -OL https://raw.github.com/VR2VYE/rc/master/rc.sh;
sudo chmod +x rc.sh;   
sudo ./rc.sh;    

### Method 2th (Manual add scipt to /etc/rc.local)  
1,   
set write mode:   
rpi-rw;sudo nano /etc/rc.local  
 
2,  
add the follow fragment before  " exit 0 ", use Ctrl+C，Ctrl+V,  

mount -o remount,rw /  
echo 3 > /sys/class/gpio/export  
echo out > /sys/class/gpio/gpio3/direction  
echo 1 > /sys/class/gpio/gpio3/value  
echo 3 > /sys/class/gpio/unexport  
mount -o remount,ro /  

3,     
Ctrl+X save the modify and reboot ( disconnect power and reboot again)  

### Mothod 3th 
Use the Pi-Star Image have complete fix.

NOTE:  
If you NanoPi NEO do not have this problem, this script sometime will prevent MMDVM HAT firmware entry into normal status.     
So if you have find this fragment in your rc.local ,remove it then disconnect power and reboot again.  
cat /etc/rc.local   #Check the fragment at the end of file.   
rpi-rw; sudo nano /etc/rc.local   #remove this fragment  

Still have problem, contact bi7jta@gmail.com or Facebook IM https://www.facebook.com/winters.cn  
