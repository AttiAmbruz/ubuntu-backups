PROJECT=$1
NOW=$(date +"%Y-%m-%d")
FILE=$NOW"_"$PROJECT".tar.gz"
tar -czvf /bkp/apache/$FILE /var/www/html/$PROJECT
#ftp-upload -h ftpHost -u ftpUser --password ftpPwd -d /backup/ /bkp/apache/$FILE

