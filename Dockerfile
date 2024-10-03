# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container 
WORKDIR /usr/src/app

# Copy package.json and package-lock.json 
COPY package*.json ./

# Install the app dependencies inside the container 
RUN npm install

# Copy the rest of the application code to the container 
COPY . .

# Expose the port the app runs on 
EXPOSE 3000

# Define the command to run the app 
CMD ["node", "app.js"]
