#!/bin/bash

# Leer la variable GITHUB_USER
github_user=${GITHUB_USER:-"luisfjf"}

# Consultar la URL de la API de GitHub
api_url="https://api.github.com/users/$github_user"
response=$(curl -s "$api_url")

# Extraer la información del JSON
id=$(echo "$response" | jq -r '.id')
created_at=$(echo "$response" | jq -r '.created_at')

# Darle formato al mensaje
mensaje="Hola $github_user. User ID: $id. Cuenta fue creada el: $created_at."

# Mostrar mensaje en la consola
echo "$mensaje"

# Obtener la fecha actual
fecha=$(date +"%d-%m-%Y")

# Crear el archivo de log
mkdir -m 775 "/tmp/$fecha"
echo "$mensaje" >> "/tmp/$fecha/saludos.log"

# Cambiar configuracion de crontab
crontab -e

#Se indica en el primer parametro que se ejecute el script a cada 5 minutos
"*/1 * * * * /mnt/c/Users/Elica/Documents/LJIM/Sopes1/Clase/actividad2.sh"

# Reiniciar el servicio de cron para que tome los cambios
service cron restart
