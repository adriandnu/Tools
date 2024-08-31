https://www.youtube.com/watch?v=u3YbNYAalDc&list=WL&index=58&t=920s
https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-20-04

# Tools

 script en Bash para instalar Nginx en Ubuntu 20.04. Es sencillo y te guiará paso a paso. Solo necesitas copiar y pegarlo en un archivo .sh, darle permisos de ejecución y ejecutarlo.

```
#!/bin/bash

# Script para instalar Nginx en Ubuntu 20.04
Asegúrate de ejecutarlo como usuario con privilegios de sudo

# Actualizar la lista de paquetes
echo "Actualizando la lista de paquetes..."
sudo apt update

# Instalar Nginx
echo "Instalando Nginx..."
sudo apt install -y nginx

# Iniciar el servicio de Nginx
echo "Iniciando Nginx..."
sudo systemctl start nginx

# Habilitar Nginx para que se inicie al arrancar el sistema
echo "Habilitando Nginx para iniciar automáticamente..."
sudo systemctl enable nginx

# Verificar el estado de Nginx
echo "Verificando el estado de Nginx..."
sudo systemctl status nginx

# Abrir el puerto 80 en el firewall para permitir tráfico HTTP
echo "Configurando el firewall para permitir tráfico HTTP..."
sudo ufw allow 'Nginx HTTP'

# Confirmar la configuración del firewall
echo "Verificando la configuración del firewall..."
sudo ufw status

# Mensaje final
echo "¡Instalación de Nginx completada! Puedes verificarlo abriendo tu navegador y visitando http://tu_direccion_ip"
```
Instrucciones:
Guardar el script: Copia el script en un archivo, por ejemplo instalar_nginx.sh.

Dar permisos de ejecución: En la terminal, navega hasta donde guardaste el archivo y ejecuta:
```
chmod +x instalar_nginx.sh
```
Ejecutar el script: Ejecuta el script con:

```
./instalar_nginx.sh
```
Este script hará todo el trabajo por ti, y al final te dirá que abras tu navegador para comprobar que Nginx está funcionando correctamente. ¡Así de fácil!
