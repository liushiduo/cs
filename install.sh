#! /bin/sh

opkg install clash/*.ipk --node
mkdir -p /etc/openclash/core

for filename in clash/*.tar.gz
    do
    tar -zxvf $filename -C /etc/openclash/core
done

chmod -R 777 /etc/openclash/core/*
rm -rf clash && rm -rf install.sh