# Usar una imagen base de Node.js
FROM node:18

# Establecer el directorio de trabajo
WORKDIR /app

COPY package*.json ./

# Instalar las dependencias
RUN npm install

COPY . .

CMD ["node", "src/index.js"]
