cd D:\home\site\wwwroot
curl https://wordpress.org/latest.zip > WP.zip
unzip WP.zip
cd wordpress
curl -L -O "https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/wp-config.php"
curl -L -O "https://raw.github.com/MINHDUC1996/AzureScript-WordPress/master/web.config"
cd D:\home\site\wwwroot
rm WP.zip
rm SetupWP.bat
