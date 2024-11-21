# Use an official nginx image with unprivileged user
FROM nginxinc/nginx-unprivileged:stable-alpine

# Copy all files from the src directory to the nginx HTML directory
COPY src/* /usr/share/nginx/html/

# Expose port 8080 (non-root)
EXPOSE 8080

# Start nginx
CMD ["nginx", "-g", "daemon off;"]