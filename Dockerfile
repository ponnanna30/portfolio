# Use official nginx image to serve static files
FROM nginx:latest

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy portfolio files into nginx html directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY Prathik.jpeg /usr/share/nginx/html/
COPY Ponnanna-resume-2026.pdf /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# nginx runs in foreground by default in the official image
CMD ["nginx", "-g", "daemon off;"]