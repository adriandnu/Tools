#!/bin/bash

# Script para instalar Nginx en Ubuntu 20.04
# Asegúrate de ejecutarlo como usuario con privilegios de sudo

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

