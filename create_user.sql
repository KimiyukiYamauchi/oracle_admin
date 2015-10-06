  　 /* 実習用データ作成スクリプト      　    　  　                    */
  　/* SYSTEMユーザー(管理者ユーザー)で実行してください  　            */
   /* 評価版をインストールしたテスト環境などで使用してください。      */
  /* (本番環境では使用しないでください。)                            */

SPOOL setup.log
PROMPT
PROMPT "Clean Up ..."
PROMPT "初回実行時はエラーが発生しますが問題ありません。"

PROMPT
PROMPT User Creating...
set verify off
undefine username
DROP USER &&username CASCADE;
CREATE USER &username
IDENTIFIED BY password;
GRANT CONNECT,RESOURCE,UNLIMITED TABLESPACE TO &username;
GRANT CREATE SYNONYM TO &username;
GRANT CREATE ROLE TO &username;
GRANT CREATE VIEW TO &username;
set verify on

SPOOL off
