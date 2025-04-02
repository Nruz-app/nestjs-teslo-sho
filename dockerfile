# Usa una imagen base de Node.js (recomendada para producción)
FROM node:21-alpine3.19

# Instala herramientas necesarias para compilar bcrypt
RUN apk add --no-cache python3 make g++ 

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia los archivos del proyecto
COPY package.json  package-lock.json ./

# Instala las dependencias (incluyendo bcrypt)
RUN npm install

# Copia el resto del código fuente
COPY . .

# Expone el puerto de la aplicación (cambia según tu configuración)
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "run", "start"]