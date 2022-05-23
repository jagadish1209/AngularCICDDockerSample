# FROM nginx:1.17.1-alpine
# COPY /dist/SampleAngularProject /usr/share/nginx/html


#stage 1

FROM node:latest as node

# Set the working directory
WORKDIR /app

COPY . .

# RUN npm install

RUN node_modules/.bin/ng build



#stage 2

FROM nginx:alpine

# COPY --from=node /app/dist/init /usr/share/nginx/html
COPY /dist/SampleAngularProject /usr/share/nginx/html

# Expose port 4203
EXPOSE 4203