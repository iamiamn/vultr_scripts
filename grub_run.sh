egrep ^menuentry /etc/grub2.cfg | cut -f 2 -d \'
grub2-set-default 0
