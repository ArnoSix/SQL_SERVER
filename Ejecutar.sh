#!/bin/bash

# Ruta del archivo a validar y cargar
ruta_archivo="/ruta/al/archivo.txt"

# Validar si el archivo existe
if [ -f "$ruta_archivo" ]; then
  echo "El archivo existe en la ruta especificada."

  # Obtener la fecha y hora de carga
  fecha_carga=$(date +%Y-%m-%d)
  hora_carga=$(date +%H:%M:%S)

  # Agregar las columnas de fecha y hora al archivo
  awk -v fecha="$fecha_carga" -v hora="$hora_carga" 'BEGIN {OFS="\t"} {print $0, fecha, hora}' "$ruta_archivo" > archivo_modificado.txt

  # Cargar el archivo modificado en SQLPlus
  sqlplus usuario/contraseña@base_de_datos <<EOF
  INSERT INTO tabla (columna1, columna2, fecha_carga, hora_carga)
  -- Reemplaza "tabla" y "columna1", "columna2" con los nombres reales
  SELECT col1, col2, TO_DATE('$fecha_carga', 'YYYY-MM-DD'), TO_TIMESTAMP('$fecha_carga $hora_carga', 'YYYY-MM-DD HH24:MI:SS')
  FROM datos_temporales;
  -- Reemplaza "datos_temporales" con el nombre de tu tabla temporal o archivo de carga
  COMMIT;
  EOF

  echo "El archivo se ha cargado correctamente en la base de datos con fecha y hora de carga."

else
  echo "El archivo no existe en la ruta especificada."
fi
