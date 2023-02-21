mkdir -p /var/run/vsftpd/empty
useradd -m -s /bin/bash $FTP_USER
echo $FTP_USER > /etc/vsftpd.userlist
echo "$FTP_USER:$FTP_PASSWORD" | /usr/sbin/chpasswd &> /dev/null
/usr/sbin/vsftpd /etc/vsftpd.conf
