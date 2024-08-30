import json
import random
import time
import paho.mqtt.client as mqtt

# Función para generar valores aleatorios de temperatura, humedad y luz
def generate_sensor_data():
    data = {
	"id" : 3,
        "temperatura": round(random.uniform(20.0, 45.0), 2),  # Temperatura en °C
        "humedad": round(random.uniform(0.0, 100.0), 2),     # Humedad en %
        "luz": random.randint(0, 100)                    # Luz en luz
    }
    return data

# Configuración del cliente MQTT
broker = "localhost"  # Puedes cambiar por la IP de tu broker MQTT
port = 1883
topic = "ClaseIoT"    # Tópico donde se enviarán los datos

client = mqtt.Client()

# Conectarse al broker MQTT
client.connect(broker, port)

try:
    while True:
        # Generar los datos del sensor
        sensor_data = generate_sensor_data()

        # Convertir los datos a formato JSON
        json_data = json.dumps(sensor_data)

        # Publicar los datos en el tópico MQTT
        client.publish(topic, json_data)

        print("Mensaje enviado:", json_data)

        # Esperar 5 segundos antes de enviar el siguiente mensaje
        time.sleep(15)

except KeyboardInterrupt:
    print("Interrumpido por el usuario")

finally:
    # Desconectarse del broker
    client.disconnect()
