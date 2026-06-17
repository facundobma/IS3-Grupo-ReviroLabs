# Consigna 4: Seleccionamos la imagen oficial de Node.js (versión ligera Alpine)
FROM node:18-alpine

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Consigna 5: Copiamos archivos de configuración e instalamos dependencias
COPY package*.json ./
RUN npm install

# Copiamos el resto del código fuente al contenedor
COPY . .

# Exponemos el puerto de la aplicación
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]