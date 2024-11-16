# Use Node.js 16 as the base image (adjust if necessary)
FROM node:16

# Create and set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your application runs on
EXPOSE 6041

# Start the application
CMD ["node", "index.js"]