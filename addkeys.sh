#!/bin/bash
file=hostnames
read -s -p "Enter pass : " pass

cat $file | while read line 
do
echo $line
#echo "entering to $host, you'll have to enter your pass twice"
sshpass -p "$pass" ssh $line mkdir -p .ssh

cat /home/basilis/.ssh/id_rsa.pub | sshpass -p "$pass" ssh $line 'cat >> .ssh/authorized_keys'

echo "Key added in $line"

done
