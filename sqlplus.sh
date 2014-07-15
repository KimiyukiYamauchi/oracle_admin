#!/bin/bash
LD_LIBRARY_PATH=/home/yamauchi/oracle/instantclient_12_1
PATH=/home/yamauchi/oracle/instantclient_12_1:$PATH
NLS_LANG=JAPANESE_JAPAN.AL32UTF8
export LD_LIBRARY_PATH PATH NLS_LANG
rlwrap sqlplus hr/hr@172.16.40.4:1521/db11
