
encontrado=false
for archivo in $(find /u01/userhome/ftpuser/ftp/files -type f -name "*.csv")
do
  # Código a ejecutar si se encuentra el archivo
  echo "Se encontró el archivo: $archivo"

echo exit | sqlplus jabello/1234 @limpiar.sql
sqlldr userid=jabello/1234 control='carga_csv.ctl'
rm v_productos.csv

mailx -s "ARCHIVO CARGADO CORRECTAMENTE" "jose.abellog@correoaiep.cl" < texto.txt

#exit
#sh ciclo.sh
  encontrado=false
###  break  # Terminar el ciclo después de encontrar el archivo
done

if [ "$encontrado" = false ]
then
  # Código a ejecutar si no se encuentra el archivo
  echo "No se encontró el archivo especificado."
sh ciclo.sh

fi


