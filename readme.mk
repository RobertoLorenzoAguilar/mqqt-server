Configuración de la Imagen de Mosquitto
Pasos para Configurar la Imagen de Mosquitto
Descargue la imagen de Mosquitto utilizando el comando docker pull eclipse-mosquitto
bash

Verify

Open In Editor
Edit
Copy code
docker pull eclipse-mosquitto
Cree un contenedor a partir de la imagen de Mosquitto utilizando el comando docker run
bash

Verify

Open In Editor
Edit
Copy code
docker run -d --name mosquitto_agosto -p 1883:1883 -p 9001:9001 eclipse-mosquitto
Inicie el contenedor de Mosquitto utilizando el comando docker start
bash

Verify

Open In Editor
Edit
Copy code
docker start mosquitto_agosto
Instale vim en el contenedor utilizando el comando docker exec
bash

Verify

Open In Editor
Edit
Copy code
docker exec -it mosquitto_agosto apk add vim
Edite el archivo mosquitto.conf utilizando el comando docker exec
bash

Verify

Open In Editor
Edit
Copy code
docker exec -it mosquitto_agosto /bin/sh -c "cd /mosquitto/config && vim mosquitto.conf"
Instrucciones para Editar mosquitto.conf
General configuration
Descomente la línea allow_anonymous para permitir conexiones anónimas
markdown

Verify

Open In Editor
Edit
Copy code
allow_anonymous
Listeners
Descomente la línea listener para habilitar el listener
markdown

Verify

Open In Editor
Edit
Copy code
listener
Editar el Archivo con vim
Busque una línea presionando Esc seguido de / y el texto a buscar.
Presione Enter para ir a la línea encontrada y descomentarla.
Guarde los cambios con :w.
Salga del editor con :qa.
Reinicie el contenedor de Mosquitto utilizando el comando docker restart
bash

Verify

Open In Editor
Edit
Copy code
docker restart mosquitto_agosto

en un solo md


Configuración de la Imagen de Mosquitto
Pasos para Configurar la Imagen de Mosquitto
Descargue la imagen de Mosquitto utilizando el comando docker pull eclipse-mosquitto

bash

Verify

Open In Editor
Edit
Copy code
docker pull eclipse-mosquitto
Cree un contenedor a partir de la imagen de Mosquitto utilizando el comando docker run

bash

Verify

Open In Editor
Edit
Copy code
docker run -d --name mosquitto_agosto -p 1883:1883 -p 9001:9001 eclipse-mosquitto
Inicie el contenedor de Mosquitto utilizando el comando docker start

bash

Verify

Open In Editor
Edit
Copy code
docker start mosquitto_agosto
Instale vim en el contenedor utilizando el comando docker exec

bash

Verify

Open In Editor
Edit
Copy code
docker exec -it mosquitto_agosto apk add vim
Edite el archivo mosquitto.conf utilizando el comando docker exec

bash

Verify

Open In Editor
Edit
Copy code
docker exec -it mosquitto_agosto /bin/sh -c "cd /mosquitto/config && vim mosquitto.conf"
Instrucciones para Editar mosquitto.conf
General configuration
Descomente la línea allow_anonymous para permitir conexiones anónimas

markdown

Verify

Open In Editor
Edit
Copy code
allow_anonymous
Listeners
Descomente la línea listener para habilitar el listener

markdown

Verify

Open In Editor
Edit
Copy code
listener
Editar el Archivo con vim
Busque una línea presionando Esc seguido de / y el texto a buscar.
Presione Enter para ir a la línea encontrada y descomentarla.
Guarde los cambios con :w.
Salga del editor con :qa.
Reinicie el contenedor de Mosquitto utilizando el comando docker restart

bash

Verify

Open In Editor
Edit
Copy code
docker restart mosquitto_agosto
