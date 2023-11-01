# Utiliza la imagen oficial de Nginx HTTP Server con una versión específica
FROM nginx:latest

# Copia tus archivos estáticos desde tu sistema host a la carpeta de trabajo de Nginx en el contenedor
COPY ./1/* /usr/share/nginx/html/

# Crea una carpeta personal en la raíz del sistema
RUN mkdir -p /miguel_2672501

# Asigna permisos necesarios para la carpeta
RUN chmod 777 /miguel_2672501

# Copia una de las imágenes de la carpeta "recursos" a la carpeta personal en el contenedor
COPY recursos/img1.jpg /miguel_2672501

# Copia el script "main.sh" al directorio personal en el contenedor
COPY main.sh /miguel_2672501/main.sh

# Da permisos de ejecución al script
RUN chmod +x /miguel_2672501/main.sh

# Exponer el puerto
EXPOSE 8501

# Inicia el servidor Nginx en primer plano al ejecutar el contenedor
CMD ["nginx", "-g", "daemon off;"]
