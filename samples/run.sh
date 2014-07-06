#!/bin/sh

[ $# -lt 3 ] && echo "usage: $0 from passwd port [to]" && exit 1

from=$1 && passwd=$2 && port=$3
[ $# -eq 4 ] && to="$4" || to=""


domain="sip.uskee.org"

if [ "$to" = "" ]; then
./sip_testing -r "sip:$domain" -u "sip:$from@$domain" -p $port -U $from -P $passwd -d
else
./sip_testing -r "sip:$domain" -u "sip:$from@$domain" -p $port -U $from -P $passwd -t "sip:$to@$domain" -d
fi

exit 0
