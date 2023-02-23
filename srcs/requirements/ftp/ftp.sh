mkdir -p /var/run/vsftpd/empty
mkdir -p /home/oel-berh/wordpress
useradd -m -s /bin/bash $FTP_USER
echo $FTP_USER > /etc/vsftpd.userlist
echo "$FTP_USER:$FTP_PASSWORD" | /usr/sbin/chpasswd &> /dev/null
chown $FTP_USER:$FTP_USER /var/run/vsftpd/empty
chown $FTP_USER:$FTP_USER /home/oel-berh/wordpress

exec  vsftpd
# /usr/sbin/vsftpd /etc/vsftpd.conf
