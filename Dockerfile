FROM node:16.15.0-alpine as build

# Set Working Directory
WORKDIR /app

# Copy Node Packages Requirement
COPY package.json ./

RUN npm install

COPY . ./

# Expose Application Port
EXPOSE 3000

# Run The Application
CMD ["npm", "start"]