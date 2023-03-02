# adduser -D ${FTP_USER} && echo ${FTP_USER}:${FTP_PASSWORD} | chpasswd
# chown -R ${FTP_USER}:${FTP_USER} /home/"${FTP_USER}"
# /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf

useradd omar
echo "omar" | tee -a /etc/vsftpd.userlist
echo "omar:1234" | chpasswd
usermod -aG www-data omar
mkdir -p /home/omar/empty

exec vsftpd