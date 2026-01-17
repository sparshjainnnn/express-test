# Use Node base image
FROM node:18-alpine

# Create app directory inside container
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Expose Express port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
