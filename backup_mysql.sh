MYSQLPWD=$2
NOW=$(date +"%Y-%m-%d")
FILE=$NOW".sql.gz"
mysqldump -u root -p$MYSQLPWD --all-databases | gzip > /bkp/mysql/$FILE
#ftp-upload -h ftpHost -u ftpUser --password ftpPwd -d /backup/ /bkp/mysql/$FILE

