# Base image
FROM node:20

# Working directory inside container
WORKDIR /app

# Copy package files first (for efficient caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Expose the port inside the container
EXPOSE 4000

# Command to run the app
CMD ["node", "server.js"]