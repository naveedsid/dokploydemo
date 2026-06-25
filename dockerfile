# Use official Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application source
COPY . .

# Environment
ENV NODE_ENV=production
ENV PORT=4000

# Expose application port
EXPOSE 4000

# Start application
CMD ["npm", "start"]