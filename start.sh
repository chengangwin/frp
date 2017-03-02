#!/bin/bash
nohup /bin/frpc -c /bin/frpc.ini &
/bin/frps -c /bin/frps.ini
