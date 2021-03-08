#!/bin/bash

# Linux MySQL Database SFTP Backup Script
# Version: 1.0
# Script by: Reyner González

backup_path="./backups"

create_backup() {
  umask 177

  date=$(date '+%y%m%d')
  name="client-name-db_"
  FILE="$name$date.sql"
  mysqldump --user=$user --password=$password --host=$host $db_name > $FILE

  echo 'Backup Complete'
}

clean_backup() {
  rm -f $backup_path/$FILE
  echo 'Local Backup Removed'
}

########################
# Edit Below This Line #
########################

# Database credentials

user="USERNAME HERE"
password="PASSWORD HERE"
host="IP HERE"
db_name="DATABASE NAME HERE"

# FTP Login Data
USERNAME="USERNAME HERE"
PASSWORD="PASSWORD HERE"
SERVER="IP HERE"
PORT="SERVER PORT HERE"

#Remote directory where the backup will be placed
REMOTEDIR="./"

#Transfer type
#1=FTP
#2=SFTP
TYPE=2

##############################
# Don't Edit Below This Line #
##############################

cd $backup_path
create_backup

if [ $TYPE -eq 1 ]
then
ftp -n -i $SERVER <<EOF
user $USERNAME $PASSWORD
binary
cd $REMOTEDIR
mput $FILE
quit
EOF
elif [ $TYPE -eq 2 ]
then
sshpass -p $PASSWORD sftp -oPort=$PORT $USERNAME@$SERVER << !
cd $REMOTEDIR
put $FILE
!
else
echo 'Please select a valid type'
fi

echo 'Remote Backup Complete'
clean_backup
#END