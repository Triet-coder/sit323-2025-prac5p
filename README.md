Steps
1. Install Docker
Follow the official Docker installation guide to install Docker on your system.

2. Clone the Sample Web Application
You can clone your app from the previous OnTrack task or proceed with the app for your HD tasks.

To clone the app:

git clone <repository-url>
cd <app-directory>
3. Create a Dockerfile
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
4. Build the Docker image
To build the Docker image, run the following command in the terminal from the root of your application directory:

docker build -t my-web-app .
STEP 6: Start the App Using Docker Compose
Run this command:
docker-compose up
✅ Now open your browser and go to:
http://localhost:3000
STEP 7: Test the App
Confirm your app is running by:

Visiting http://localhost:3000 in your browser

Or using terminal: curl http://localhost:3000
STEP 8: (Optional) Push the Docker Image to Docker Hub
Log in to Docker Hub: docker login
Tag the image: docker tag sit323-webapp your-dockerhub-username/sit323-webapp
Push it: docker push your-dockerhub-username/sit323-webapp
