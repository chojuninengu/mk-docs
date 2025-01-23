# Stage 1: Build the MkDocs site
FROM python:3.9-slim AS builder

# Set the working directory
WORKDIR /app

# Install MkDocs and the Material theme
RUN pip install mkdocs mkdocs-material

# Copy the MkDocs project files
COPY . .

# Build the MkDocs sitedo
RUN mkdocs build

# Stage 2: Serve the site using Nginx
FROM nginx:alpine

# Copy the built site from the builder stage
COPY --from=builder /app/site /usr/share/nginx/html

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]