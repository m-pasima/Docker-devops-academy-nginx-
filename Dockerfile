# Use minimal NGINX image
FROM nginx:alpine

# Metadata (good for tracing and auditing)
LABEL maintainer="devops-academy"

# Copy custom index.html into default NGINX web root
COPY index.html /usr/share/nginx/html/index.html

# Optional: Add a favicon to avoid 404s
# COPY favicon.ico /usr/share/nginx/html/favicon.ico

# Healthcheck to ensure container is responsive
HEALTHCHECK CMD wget -q --spider http://localhost || exit 1
