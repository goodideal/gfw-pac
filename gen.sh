#!/bin/bash

# wget https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt -O gfwlist.txt
# wget https://raw.githubusercontent.com/pexcn/daily/gh-pages/chinalist/chinalist.txt -O chinalist.txt
# wget http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest -O delegated-apnic-latest.txt

./gfw-pac.py -i gfwlist.txt \
            -f gfw.js \
            -p "SOCKS5 127.0.0.1:1080; SOCKS 127.0.0.1:1080; DIRECT;" \
            --user-rule=custom-domains.txt \
            --direct-rule=chinalist.txt \
            --localtld-rule=local-tlds.txt \
            --ip-file=delegated-apnic-latest.txt
