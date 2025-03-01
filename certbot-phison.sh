#!/bin/bash
echo "Generating certificate for phison.xyz..."$'\r\n\r\n'
certbot certonly --manual --manual-public-ip-logging-ok --preferred-challenges=http --manual-auth-hook ./auth/auth-host.sh --manual-cleanup-hook ./cleanup/cleanup-host.sh --non-interactive -d superdomain.net -d www.superdomain.net
read -n1 -r -s -p "Press any key to load certificate...`echo $'\r\n\r\n'`"
more /etc/letsencrypt/live/phison.xyz/cert.pem
read -n1 -r -s -p "Press any key to load private key...`echo $'\r\n\r\n'`"
more /etc/letsencrypt/live/phison.xyz/privkey.pem
read -n1 -r -s -p "Press any key to end certificate renewal process...`echo $'\r\n\r\n'`"
