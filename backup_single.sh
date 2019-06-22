PROJECT=$1
sh /sh/backup_mysql.sh
sh /sh/backup_apache_single.sh $PROJECT
