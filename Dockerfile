# Use Node.js 18 Alpine (Lightweight)
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files first for caching
COPY package.json ./

# Install dependencies clean
RUN npm install --omit=dev

# Copy the server file (AND .env if needed)
COPY server.js .
COPY .env .

# Start the engine
CMD ["node", "server.js"]
