# Base image with Node.js 18
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Create a .env file from a template (if needed)
# COPY .env.template .env

# Set environment variables from the .env file

# Define the command to run when the container starts
CMD ["npm", "start"]