# Use the official Nginx image as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx index file
RUN rm -rf ./*

# Copy the local files (HTML, CSS, JS) to the container
COPY . .

# Expose port 80 to the host machine
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
