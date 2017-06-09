cd D:\home\site\wwwroot
curl https://wordpress.org/latest.zip > WP.zip
unzip WP.zip
cd wordpress
curl -O "https://raw.github.com/MINHDUC1996/QuickInstall-Azure-WordPress/master/wp-config.php"
cls
echo "Install latest WordPress with MySQL in-app successfully"
exit
