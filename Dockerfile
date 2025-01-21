# Pull the official Node.js runtime image
FROM node:21

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package.json package-lock.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the application port (3000 in this case)
EXPOSE 3000

# Start the application (assuming index.js is the entry point)
CMD ["node", "index.js"]
