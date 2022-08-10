#!/bin/bash

echo "Atualizando os repositórios e instalando os pacotes..."

apt-get update && apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Baixando os arquivos da aplicação..."
cd /tmp
wget "https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"
unzip /tmp/main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

exit 0
