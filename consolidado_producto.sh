#!/bin/bash

# Verificar si el archivo eventos.txt existe
if [ ! -f "eventos.txt" ]; then
    echo "Error: El archivo eventos.txt no existe."
    exit 1
fi

# Extraer los códigos de producto únicos
tail -n +2 eventos.txt | awk -F'|' '{print $2}' | sort | uniq > codigos_productos.txt

# Recorrer cada código de producto y generar un archivo CSV
while read -r codigo; do
    output_file="producto_${codigo}.csv"
    
    # Escribir encabezado en el archivo CSV
    echo "Fecha,Producto,Cantidad,Precio" > "$output_file"
    
    # Filtrar los eventos del producto y escribir en el archivo CSV
    grep "|$codigo|" eventos.txt | awk -F'|' '{print $1","$2","$3","$4}' >> "$output_file"
    
    echo "Archivo generado: $output_file"
done < codigos_productos.txt

# Agregar datos de productos fantasmas
echo "2025-02-14|PX001|5|200" >> eventos.txt
echo "2025-02-15|PX002|3|120" >> eventos.txt
echo "2025-02-16|PX003|2|80" >> eventos.txt
echo "2025-02-17|PX004|1|50" >> eventos.txt
echo "Datos de productos fantasmas agregados a eventos.txt"

# Limpiar archivo temporal
