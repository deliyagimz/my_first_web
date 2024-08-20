# Use an official Nginx image as the base
FROM nginx:alpine

# Copy your HTML and CSS files to the Nginx default directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
