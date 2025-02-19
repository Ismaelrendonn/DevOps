#!/bin/bash

# Verificar si se proporcionó un argumento
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <nombre_archivo_destino>"
    exit 1
fi

# Definir variables
ARCHIVO_ORIGEN="eventos.txt"
ARCHIVO_DESTINO="$1"

# Verificar si el archivo origen existe
if [ ! -f "$ARCHIVO_ORIGEN" ]; then
    echo "Error: El archivo $ARCHIVO_ORIGEN no existe."
    exit 1
fi

# Copiar contenido
cp "$ARCHIVO_ORIGEN" "$ARCHIVO_DESTINO"

echo "Se ha copiado el contenido de $ARCHIVO_ORIGEN a $ARCHIVO_DESTINO exitosamente."
nano 

