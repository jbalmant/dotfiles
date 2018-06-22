#!/bin/bash
DNSMASQID=$(ps -ef | grep dnsmasq | grep trust-anchor | awk '{print $2}')

if [[ -n $DNSMASQID ]]
   then
	echo 'Killing DNSMASQ '
        sudo kill $DNSMASQID

	sudo /etc/init.d/networking restart                                                                                                                          
	sudo /etc/init.d/network-manager restart
fi

echo 'Done'
