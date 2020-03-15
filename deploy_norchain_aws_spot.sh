#deploy php code to product folder
echo "Deploy norchain to /var/www/html"

#Step one
echo ">=-Step one --- Unzip norchain.zip ---"
sudo unzip -o ./norchain.zip -d /var/www/html
