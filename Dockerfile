# Step 1: Base image - uses lightweight Node.js 18 Alpine Linux
FROM node:18-alpine

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy package.json first (optimization for caching)
COPY package.json ./
RUN npm install

# Step 4: Copy rest of source code
COPY . .

# Step 5: Set environment variable
ENV MESSAGE="Hello from Dockerfile Lab!"

# Step 6: Expose port (documentation purposes)
EXPOSE 3000

# Step 7: Define command to run application
CMD ["npm", "start"]