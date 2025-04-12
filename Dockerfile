# Base Node.js image
FROM node:18

# Install NGINX
RUN apt update && apt install -y nginx

# Create app directory
WORKDIR /app

# Copy Node app files
COPY package*.json ./
RUN npm install
COPY . .

# Copy NGINX config
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Start both Node.js and NGINX
CMD service nginx start && node server.js
