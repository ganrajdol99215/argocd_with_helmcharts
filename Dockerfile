# Used the official Nginx image as the base 
FROM nginx:alpine

# Removed default Nginx website files
RUN rm -rf /usr/share/nginx/html/*

# Copied website files into Nginx's html directory
COPY . /usr/share/nginx/html

# Exposed port 80 so the container can be accessed externally
EXPOSE 3000

# Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
