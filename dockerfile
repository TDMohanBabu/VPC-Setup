FROM nginx:alpine

COPY . /usr/share/nging/html
RUN npm install --only=production
Expose 80
CMD ["nginx", "-g", "daemon off;"]
