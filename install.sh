#!/usr/bin/env bash
IPTABLES_DIR="/etc/iptables"
echo "Copying things over..."
cp "iptables-persistent" "/etc/init.d/"
cp "iptables-persistent.conf" "/etc/default/"
if [ -d "$IPTABLES_DIR" ]
then
	echo "\"/etc/iptables\" doesn't exist, making it"
	mkdir "/etc/iptables"
fi
cp "rules" "/etc/iptables/"
cp "ipv6_rules" "/etc/iptables/"
echo "There you go!"

exit 0