# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory di dalam container
WORKDIR /app

# Menyalin seluruh source code ke working directory container
COPY . .

# Menentukan environment production dan host database item-db
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies production lalu build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port aplikasi
EXPOSE 8080

# Menjalankan server saat container diluncurkan
CMD ["npm", "start"]
