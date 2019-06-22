PROJECT=$1
NOW=$(date +"%Y-%m-%d")
APACHE_FILE=$NOW"_"$PROJECT".tar.gz"
MYSQL_FILE=$NOW".sql.gz"
if [ -f "/bkp/apache/$APACHE_FILE" ]; then
	#File exists
	mv /bkp/apache/$APACHE_FILE /bkp/apache/$APACHE_FILE.old
	bash /sh/backup_apache_single.sh $PROJECT
	rm /bkp/apache/$APACHE_FILE.old
else
	#Old backup file does not exist
	bash /sh/backup_apache_single.sh $PROJECT
fi

if [ -f "/bkp/mysql/$MYSQL_FILE" ]; then
        #File exists
        mv /bkp/mysql/$MYSQL_FILE /bkp/mysql/$MYSQL_FILE.old
        bash /sh/backup_mysql.sh $PROJECT
        rm /bkp/mysql/$MYSQL_FILE.old
else
        #Old backup file does not exist
        bash /sh/backup_mysql.sh $PROJECT
fi



