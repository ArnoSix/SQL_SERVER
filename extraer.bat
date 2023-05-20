
@echo off

set fecha=%date:~-4%%date:~3,2%%date:~0,2%%time:~3,2%%time:~6,2%

sqlcmd -S DESKTOP-VR04QS6\SQLEXPRESS -U jabello_full  -P 1234  -d AdventureWorks2019  -s "," -W -Q "select * from productos" -o "%fecha%v_productos.csv"

ftp -i -n -s:enviar.txt

del *.csv

