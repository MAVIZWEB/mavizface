# Use a lightweight node image
FROM node:18-alpine

# Install serve for static file serving
RUN npm install -g serve

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Expose port
EXPOSE 3000

# Start the application
CMD ["serve", "-s", ".", "-l", "3000"]
