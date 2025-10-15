# Simple static site Dockerfile for DevOps Portfolio
FROM nginx:alpine

# Copy the static HTML file
COPY public/index.html /usr/share/nginx/html/index.html

# Copy nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Add healthcheck
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://127.0.0.1 || exit 1

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
