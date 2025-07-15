# Use official Nginx as base image
FROM nginx:latest

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy all project files to nginx html directory
COPY . .

# Expose port 80 (default for nginx)
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
