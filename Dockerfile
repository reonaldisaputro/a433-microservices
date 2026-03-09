# Gunakan image Node.js
FROM node:14

# Tentukan direktori kerja
WORKDIR /app

# Salin package manifest terlebih dahulu
COPY package*.json ./

# Install dependency aplikasi
RUN npm install

# Salin seluruh source code aplikasi
COPY . .

# Expose port shipping-service sesuai .env
EXPOSE 3001

# Jalankan aplikasi
CMD ["npm", "start"]
