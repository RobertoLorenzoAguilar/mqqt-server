Configuración de la Imagen de Mosquitto
Pasos para Configurar la Imagen de Mosquitto

Descargar la Imagen de Mosquitto: docker pull eclipse-mosquitto
Crear un Contenedor a Partir de la Imagen Descargada: docker run -d --name mosquitto_agosto -p 1883:1883 -p 9001:9001 eclipse-mosquitto
Iniciar el Contenedor: docker start mosquitto_agosto
Instalar vim en el Contenedor: docker exec -it mosquitto_agosto apk add vim
Editar el Archivo mosquitto.conf:
docker exec -it mosquitto_agosto /bin/sh -c "cd /mosquitto/config && vim mosquitto.conf"
Descomentar las líneas allow_anonymous y listener en el archivo de configuración
Instrucciones para editar con vim: buscar una línea con Esc + / + texto a buscar, presionar Enter para ir a la línea encontrada y descomentarla, guardar cambios con :w, salir del editor con :qa
Reiniciar el Contenedor: docker restart mosquitto_agosto
¡Listo! Ahora tiene configurada la imagen de Mosquitto.
