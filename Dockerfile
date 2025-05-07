# Use official Node.js image from Docker Hub 
FROM node:16 
# Set the working directory inside the container 
WORKDIR /usr/src/app 
# Copy the package.json and package-lock.json if available 
# (skip this part if you don't need dependencies for this example) 
# COPY package*.json ./ 
# Install dependencies (skip if no dependencies) 
# RUN npm install 
# Copy the server.js file to the working directory 
COPY server.js . 
# Expose the port the app will run on 
EXPOSE 8080 
# Run the Node.js server 
CMD ["node", "server.js"]