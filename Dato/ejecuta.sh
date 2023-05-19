encontrado=false
for archivo in $(find /u01/userhome/ftpuser/ftp/files -type f -name "*.csv")
do
  # Código a ejecutar si se encuentra el archivo
  echo "Se encontró el archivo: $archivo"
  encontrado=true
  break  # Terminar el ciclo después de encontrar el archivo
done

if [ "$encontrado" = false ]
then
  # Código a ejecutar si no se encuentra el archivo
  echo "No se encontró el archivo especificado."
fi

