1）  
进入Web SSH 模式  
http://pi-star/admin/expert/ssh_access.php  
用户名： pi-star  
密码： raspberry   

设置可写模式，命令行执行：  
rpi-rw

2）   
编辑 rc.local文件， 执行（Ctrl+C  Ctrl+V，回车即可)   
sudo nano /etc/rc.local  

3）   
移动上下光标，在 exit 0 之前插入下面内容，Ctrl+C 复制，Ctrl+V 粘贴  

mount -o remount,rw /  
echo 3 > /sys/class/gpio/export  
echo out > /sys/class/gpio/gpio3/direction  
echo 1 > /sys/class/gpio/gpio3/value  
echo 3 > /sys/class/gpio/unexport  
mount -o remount,ro /  

4）   
按 ctrl+X 保存并退出，拔电重启 nanoPi,  


第二种方法：  
执行（Ctrl+C  Ctrl+V) ：   
rpi-rw;  
curl -OL https://raw.github.com/VR2VYE/rc/master/rc.sh;
sudo chmod +x rc.sh;   
sudo ./rc.sh;    

拔电重启.    

