FROM node:10

# Directory inside which commands will run
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all of the app files into the image
COPY . .

EXPOSE 4000/tcp

# Default command to run when starting the container
CMD ["npm", "start"]

