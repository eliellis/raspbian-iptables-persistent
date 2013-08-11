#!/usr/bin/env bash
IPTABLES_DIR="/etc/iptables"
INIT_DIR="/etc/init.d/"
DEFAULT_DIR="/etc/default/"

cp "iptables-persistent" $INIT_DIR

if [[ $1 = "--edit" ]]
then 
	nano "iptables-persistent.conf"
	nano "rules"
	nano "ipv6_rules"
fi

echo "Building warp drive..."

cp "iptables-persistent.conf" $DEFAULT_DIR

if [[ -d $IPTABLES_DIR ]]
then
	echo "\"$IPTABLES_DIR\" doesn't exist, making it"
	mkdir $IPTABLES_DIR
fi

cp "rules" $IPTABLES_DIR
cp "ipv6_rules" $IPTABLES_DIR

echo "Aligned all proton magnets!"


echo "Adding fuel to the thrusters..."

update-rc.d iptables-persistent defaults

echo "Everything is all done!"


exit 0