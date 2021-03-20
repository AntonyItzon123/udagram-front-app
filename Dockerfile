
# Use NodeJS base image
FROM node:13

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install
run npm install -g @angular/cli

# Copy app source
COPY . .

# Define the Docker image's behavior at runtime
CMD ["npm", "start"]