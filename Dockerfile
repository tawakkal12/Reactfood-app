# Base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the source code
COPY . .

# Build the React app
RUN npm run build

# Set the environment variable
ENV NODE_ENV=production

# Expose the port that the application will run on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
