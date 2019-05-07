#!/bin/bash

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

URL=http://antivirus.neu.edu.cn/ssh/lists/neu_sshbl_hosts.deny.gz
HOSTSDENY=/etc/hosts.deny
TMP_DIR=/dev/shm
FILE=hosts.deny

cd $TMP_DIR

curl $URL 2> /dev/null | gzip -dc > $FILE

LINES=`grep "^sshd:" $FILE | wc -l`

if [ $LINES -gt 10 ]
then
sed -i ‘/^####SSH BlackList START####/,/^####SSH BlackList END####/d’ $HOSTSDENY
echo "####SSH BlackList START####" >> $HOSTSDENY
cat $FILE >> $HOSTSDENY
echo "####SSH BlackList END####" >> $HOSTSDENY
fi
