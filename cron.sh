#!/bin/sh

# cron script to pull data from the Kraken API

DIR=/usr/local/apache2/htdocs

curl -sL "https://api.kraken.com/0/public/Ticker?pair=USDCAD" -H 'Accept: application/json' > $DIR/USDCAD
curl -sL "https://api.kraken.com/0/public/Ticker?pair=XMRUSD" -H 'Accept: application/json' > $DIR/XMRUSD

curl -sL "https://api.kraken.com/0/public/Ticker?pair=BTCUSD" -H 'Accept: application/json' > $DIR/BTCUSD
curl -sL "https://api.kraken.com/0/public/Ticker?pair=BTCCAD" -H 'Accept: application/json' > $DIR/BTCCAD

curl -sL "https://api.kraken.com/0/public/Ticker?pair=ETHUSD" -H 'Accept: application/json' > $DIR/ETHUSD 
curl -sL "https://api.kraken.com/0/public/Ticker?pair=ETHCAD" -H 'Accept: application/json' > $DIR/ETHCAD

curl -sL "https://api.kraken.com/0/public/Ticker?pair=SOLUSD" -H 'Accept: application/json' > $DIR/SOLUSD 
curl -sL "https://api.kraken.com/0/public/Ticker?pair=SOLCAD" -H 'Accept: application/json' > $DIR/SOLCAD


# Export CSV format to htdocs/csv/
printf '"SOLUSD",' > $DIR/csv/SOLUSD && cat $DIR/SOLUSD | jq -r '.result[] | [.a[0], .b[0], .c[0], .v[0], .p[0], .t[0], .l[0], .h[0], .o]' >> $DIR/csv/SOLUSD
printf '"ETHUSD",' > $DIR/csv/ETHUSD && cat $DIR/ETHUSD | jq -r '.result[] | [.a[0], .b[0], .c[0], .v[0], .p[0], .t[0], .l[0], .h[0], .o]' >> $DIR/csv/ETHUSD
printf '"BTCUSD",' > $DIR/csv/BTCUSD && cat $DIR/BTCUSD | jq -r '.result[] | [.a[0], .b[0], .c[0], .v[0], .p[0], .t[0], .l[0], .h[0], .o] ' >> $DIR/csv/BTCUSD
printf '"XMRUSD",' > $DIR/csv/XMRUSD && cat $DIR/XMRUSD | jq -r '.result[] | [.a[0], .b[0], .c[0], .v[0], .p[0], .t[0], .l[0], .h[0], .o] ' >> $DIR/csvXMRUSD
printf '"USDCAD",' > $DIR/csv/USDCAD && cat $DIR/USDCAD | jq -r '.result[] | [.a[0], .b[0], .c[0], .v[0], .p[0], .t[0], .l[0], .h[0], .o] ' >> $DIR/csv/USDCAD
