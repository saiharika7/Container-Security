FROM node:18-alpine

# Define a working directory
WORKDIR /usr/src/app

# Copy application files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose application port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
