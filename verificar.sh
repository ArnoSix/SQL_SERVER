#!/bin/bash

directorio="/ruta/al/directorio"  # Reemplaza "/ruta/al/directorio" con la ruta real del directorio que deseas verificar

if [ -d "$directorio" ]; then
    archivos_csv=$(find "$directorio" -maxdepth 1 -type f -name "*.csv")
    if [ -n "$archivos_csv" ]; then
        echo "Archivos .csv encontrados en el directorio $directorio:"
        echo "$archivos_csv"
    else
        echo "No se encontraron archivos .csv en el directorio $directorio."
    fi
else
    echo "El directorio $directorio no existe."
fi
