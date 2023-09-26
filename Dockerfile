# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app source code to the container
COPY . .

# Build the React app for production
RUN npm run build

# Expose a port for the application (adjust as needed)
EXPOSE 3000

# Start the app when the container runs
CMD ["npm", "start"]
