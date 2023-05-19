
echo exit | sqlplus jabello/1234 @limpiar.sql

sqlldr userid=jabello/1234 control='carga_csv.ctl'

rm productos.csv

exit

