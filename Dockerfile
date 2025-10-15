# Simple static site Dockerfile for DevOps Portfolio
FROM nginx:alpine

# Copy index.html (the main webpage file) into the folder where Nginx expects to find web pages.
COPY public/index.html /usr/share/nginx/html/index.html

# Copy nginx configuration - replacing Nginx’s default configuration with own custom one. This file tells Nginx how to behave
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Add healthcheck
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://127.0.0.1 || exit 1

# Port 80 is the standard “door” for web traffic (HTTP). This tells Docker, “Hey, open this door so people can reach the website.”
EXPOSE 80

# When the container starts, this command runs Nginx and keeps it running in the foreground (so Docker knows the container is alive).
CMD ["nginx", "-g", "daemon off;"]
