# Sử dụng ảnh base là Node.js
FROM node:14-alpine

# Tạo thư mục làm việc
WORKDIR /app

# Sao chép package.json và package-lock.json vào thư mục làm việc
COPY package*.json ./

# Cài đặt các dependencies
RUN npm install

# Sao chép toàn bộ mã nguồn vào thư mục làm việc
COPY . .

# Build dự án
RUN npm run build

# Expose cổng mặc định của ứng dụng React
EXPOSE 4100

# Khởi chạy ứng dụng
CMD [ "npm", "start" ]
