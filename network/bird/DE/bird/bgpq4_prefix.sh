prefix=$(bgpq4 -b -A -6 AS-HUIZE -R 48 -l AS_HUIZE)
if [[ "$prefix" =~ ^ERROR.* ]]; then
    exit
else
echo "$prefix" > /etc/bird/filters/AS-HUIZE.conf
fi


prefix=$(bgpq4 -b -A -4 AS-HUIZE -R 24 -l AS_HUIZE_V4)
if [[ "$prefix" =~ ^ERROR.* ]]; then
    exit
else
echo "$prefix" > /etc/bird/filters/AS-HUIZE.ipv4.conf
fi

/usr/sbin/birdc 'c'
