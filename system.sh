#!/bin/sh

# 各自の環境に合わせて記述
LD_LIBRARY_PATH=/home/application/instantclient_12_1
PATH=/home/application/instantclient_12_1:$PATH

# 以降は共通
NLS_LANG=JAPANESE_JAPAN.AL32UTF8
export LD_LIBRARY_PATH PATH NLS_LANG
export no_proxy=localhost,192.168.30.4
stty -echo
echo -n "パスワード："
read pass
stty echo
rlwrap sqlplus system/$pass@192.168.30.4:1521/db11
