# Use the latest LTS version of Node.js
FROM node:20-alpine
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy package.json and package-lock.json
COPY package*.json ./
 
# Install dependencies
RUN npm install
 
# Copy the rest of your application files
COPY . .
 
# Expune portul Vite (implicit 5173)
EXPOSE 5173

# Rulează aplicația cu Vite pe toate interfețele
CMD ["npm", "run", "dev"]