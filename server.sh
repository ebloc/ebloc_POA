#!/bin/bash
DATADIR="/Users/alper";
nohup geth --datadir $DATADIR/ebloc_POA/private --rpcaddr 127.0.0.1 --rpc --rpcport 8545 --rpccorsdomain="*" --networkid 23422 --rpcapi eth,net,web3,personal &

sleep 4

echo "loadScript(\"$DATADIR"/ebloc_POA/pass.js"\")"    | sudo geth --datadir "~/ebloc_POA/private" attach ipc:$DATADIR/ebloc_POA/private/geth.ipc console