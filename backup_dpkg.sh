NOW=$(date +"%Y-%m-%d")
FILE=$NOW".tar.gz"
tar -czvf /bkp/dpkg/$FILE /dpkg_archive
