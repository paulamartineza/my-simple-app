# Imagen base oficial de Node.js
FROM node:18-alpine

# Crear directorio de trabajo en el contenedor
WORKDIR /app

# Copiar archivos necesarios
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto que usará la app
EXPOSE 3000

# Comando para ejecutar la app
CMD ["npm", "start"]
