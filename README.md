This is a instruction for building up SS application in VPS provide by Vultr company.
Due to some reason, here I just post the part for bbr acceleration

connect to the terminal
##uname -r##
see if kernal is version

##echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf##
##echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf##
##sysctl -p##
##sysctl net.ipv4.tcp_available_congestion_control##
##sysctl net.ipv4.tcp_congestion_control##
this will print out some result, if the result contains "bbr", it means you successfully activate it

##lsmod | grep bbr##
if you can see "tcp_bbr" module that it means you already activate bbr.


