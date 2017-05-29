#!/usr/bin/env bash

sudo mkdir /var/shards/
sudo mkdir /var/uodata/
git clone https://github.com/ServUO/ServUO.git /var/shards/servuo
sudo chmod -R 777 /var/shards/
sudo chmod -R 777 /var/uodata/
echo "CustomPath=/var/uodata/" >> /var/shards/servuo/Config/DataPath.cfg
make -C /var/shards/servuo/
sed -i 's:mono64:mono:g' /var/shards/servuo/ServUO.sh
echo "Ready!  Now run 'vagrant ssh', and then 'sh /var/shards/servuo/ServUO.sh'"
