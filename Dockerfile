# 1. Use the official Node.js base image
FROM node:18

# 2. Set the working directory in the container
WORKDIR /app

# 3. Copy package.json and package-lock.json (if available)
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy the rest of the app files into the container
COPY . .

# 6. Expose the port your app uses
EXPOSE 3000

# 7. Command to run the app
CMD ["npm", "start"]
