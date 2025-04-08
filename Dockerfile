# Use official Node.js image as the base
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port (matches the one app listens on)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

