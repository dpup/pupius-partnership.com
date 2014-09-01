ip=`curl "http://pupius.co.uk/ip.php"`
echo "Restarting services via $ip"
fleetctl --tunnel $ip destroy partnership*
fleetctl --tunnel $ip start partnership*
fleetctl --tunnel $ip list-units
