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
