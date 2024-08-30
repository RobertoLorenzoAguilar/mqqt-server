### Configuración de la Imagen de Mosquitto
1. `docker pull eclipse-mosquitto`
2. `docker run -d --name mosquitto_agosto -p 1883:1883 -p 9001:9001 eclipse-mosquitto`
3. `docker start mosquitto_agosto`
4. `docker exec -it mosquitto_agosto apk add vim`
5. `docker exec -it mosquitto_agosto /bin/sh -c "cd /mosquitto/config && vim mosquitto.conf"` 
   Descomentar `allow_anonymous` y `listener` en el archivo de configuración
   Buscar línea con `Esc` + `/` + texto a buscar, presionar `Enter` para ir a la línea encontrada y descomentarla, guardar cambios con `:w`, salir del editor con `:qa`
6. `docker restart mosquitto_agosto`
