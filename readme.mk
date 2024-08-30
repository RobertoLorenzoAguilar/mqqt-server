# Pasos para Configurar la Imagen de Mosquitto

## 1. Descargar la Imagen de Mosquitto
pull_image:
	@echo Descargando la imagen de Mosquitto...
	docker pull eclipse-mosquitto

## 2. Crear un Contenedor a Partir de la Imagen Descargada
create_container:
	@echo Creando un contenedor a partir de la imagen de Mosquitto...
	docker run -d --name mosquitto_agosto -p 1883:1883 -p 9001:9001 eclipse-mosquitto

## 3. Iniciar el Contenedor
start_container:
	@echo Iniciando el contenedor de Mosquitto...
	docker start mosquitto_agosto

## 4. Instalar vim en el Contenedor
install_vim:
	@echo Instalando vim en el contenedor...
	docker exec -it mosquitto_agosto apk add vim

## 5. Editar el Archivo mosquitto.conf
# Descomentar las líneas allow_anonymous y listener en el archivo de configuración
edit_conf:
	@echo Configurando el archivo mosquitto.conf...
	docker exec -it mosquitto_agosto /bin/sh -c 'cd /mosquitto/config && vim mosquitto.conf'

# Instrucciones para Editar mosquitto.conf
# General configuration
# Descomentar la línea allow_anonymous para permitir conexiones anónimas
allow_anonymous

# Listeners
# Descomentar la línea listener para habilitar el listener
listener

# Para editar el archivo con vim:
# 1. Buscar una línea presionando Esc seguido de / y el texto a buscar.
# 2. Presionar Enter para ir a la línea encontrada y descomentarla.
# 3. Guardar los cambios con :w.
# 4. Salir del editor con :qa.

## 6. Reiniciar el Contenedor
restart_container:
	@echo Reiniciando el contenedor de Mosquitto...
	docker restart mosquitto_agosto
