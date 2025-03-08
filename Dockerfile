# Use the official Node.js 16 image
FROM node:16

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project
COPY . .

# Ensure react-scripts is executable
RUN chmod +x ./node_modules/.bin/react-scripts

# Build the React app
RUN npm run build

# Expose port 3000 (if needed)
EXPOSE 3000

# Start the app (if needed)
CMD ["npm", "start"]
