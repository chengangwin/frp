#!/bin/bash
nohup /bin/frps -c /frps.ini &
/bin/frpc -c /frpc.ini
