FROM node:18
WORKDIR /app
copy package*.json ./
RUN npm install
COPY . .
RUN npm run build
CMD ["npx", "serve", "-s", "build", "-l", "80"]
EXPOSE 80