#!/usr/bin/env bash
IPTABLES_DIR="/etc/iptables"
INIT_DIR="/etc/init.d/"
DEFAULT_DIR="/etc/default/"

echo "Copying things over..."
cp "iptables-persistent" $INIT_DIR
cp "iptables-persistent.conf" $DEFAULT_DIR
if [ -d $IPTABLES_DIR ]
then
	echo "\"$IPTABLES_DIR\" doesn't exist, making it"
	mkdir $IPTABLES_DIR
fi
cp "rules" $IPTABLES_DIR
cp "ipv6_rules" $IPTABLES_DIR
echo "There you go!"

exit 0