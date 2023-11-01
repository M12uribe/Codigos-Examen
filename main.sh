#!/bin/bash

# Ruta a la carpeta personal
personal_folder="/miguel_2672501"

# Cambia al directorio personal
cd "$personal_folder" || exit 1  # Si no puede cambiar de directorio, sale del script

# Crea 100 archivos con el formato [sunombre]-archivoX.txt
for ((i=1; i<=100; i++)); do
  touch "miguel_2672501-$i.txt"  # Corregido el formato del nombre del archivo
done

# Otorga permisos de ejecución al script si es necesario
chmod +x "main.sh"  # Se asume que main.sh está en la carpeta actual (miguel_2672501)

# Inicia el servidor Nginx en primer plano
nginx -g "daemon off;"  # Comando para iniciar Nginx en primer plano

