FROM node:22-slim
RUN apt-get update && apt-get install -y git curl psmisc && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev
COPY . .
EXPOSE 8080
CMD ["npm", "start"]
