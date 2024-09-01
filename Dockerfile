# Use the official Bun image as a base image
FROM oven/bun:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json first to install dependencies
COPY package.json ./

# Install dependencies
RUN bun install

# Copy the rest of your project files to the container
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Command to start your React application
CMD ["bun", "run", "start"]