#!/bin/bash

# Verificar si se proporciona un directorio como argumento
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <juanacatlan>"
    exit 1
fi

dir="$1"

# Verificar si el argumento es un directorio válido
if [ ! -d "$dir" ]; then
    echo "Error: '$dir' no es un directorio válido."
    exit 1
fi

# Archivo de salida
output_file="atributos_archivos.txt"

# Encabezado del archivo de salida
echo "Permisos | Usuario | Grupo | Tamaño (bytes) | Última Modificación | Nombre del Archivo" > "$output_file"
echo "---------------------------------------------------------------------------------------------------" >> "$output_file"

# Obtener la lista de archivos con sus atributos
ls -l "$dir" | awk 'NR>1 {print $1 " | " $3 " | " $4 " | " $5 " | " $6 " "$7 " "$8 " | " $9}' >> "$output_file"

echo "Archivo '$output_file' generado con éxito."

# Archivo de salida
output_file="atributos_archivos.txt"

# Si el archivo no existe, agrega el encabezado
if [ ! -f "$output_file" ]; then
    echo "Permisos | Usuario | Grupo | Tamaño (bytes) | Última Modificación | Nombre del Archivo" > "$output_file"
    echo "---------------------------------------------------------------------------------------------------" >> "$output_file"
fi

# Agregar la lista de archivos al archivo sin sobrescribir
ls -l "$dir" | awk 'NR>1 {print $1 " | " $3 " | " $4 " | " $5 " | " $6 " " $7 " " $8 " | " $9}' >> "$output_file"

echo "Datos añadidos a '$output_file' con éxito."
