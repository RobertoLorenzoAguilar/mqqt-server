#!/bin/bash

# Detener el contenedor de Docker si está corriendo
echo "Deteniendo el contenedor de Docker..."
docker stop mosquitto_agosto

# Detener Node-RED si está corriendo
echo "Deteniendo Node-RED..."
pkill -f node-red

# Detener cualquier instancia del script de Python
echo "Deteniendo cualquier script de Python en ejecución..."
pkill -f /home/brdkbug/Desktop/IOT/sensores.py

# Iniciar el contenedor de Docker
echo "Iniciando el contenedor de Docker..."
docker start mosquitto_agosto

# Iniciar la aplicación Node-RED
echo "Iniciando Node-RED..."
node-red &

# Esperar unos segundos para asegurarse de que Node-RED esté completamente iniciado
sleep 10

# Activar el entorno virtual de Python
echo "Activando el entorno virtual de Python..."
source /home/brdkbug/Desktop/IOT/path/to/venv/bin/activate

sleep 10

# Ejecutar el script de Python
echo "Ejecutando el script de Python..."
/home/brdkbug/Desktop/IOT/path/to/venv/bin/python /home/brdkbug/Desktop/IOT/sensores.py

echo "Todos los servicios han sido reiniciados."

