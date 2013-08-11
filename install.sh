#!/usr/bin/env bash
IPTABLES_DIR=/etc/iptables
echo "Copying things over..."
cp "iptables-persistent" "/etc/init.d/"
cp "iptables-persistent.conf" "/etc/default/"
if [ -d "$IPTABLES_DIR" ]
then
	echo "\"$IPTABLES_DIR\" doesn't exist, making it"
	mkdir "$IPTABLES_DIR"
fi
cp "rules" "$IPTABLES_DIR"
cp "ipv6_rules" "$IPTABLES_DIR"
echo "There you go!"

exit 0