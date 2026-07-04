FROM node:18-alpine
WORKDIR /app
RUN echo "const http=require('http');http.createServer((req,res)=>res.end('This is Docker file for NodeJS Application')).listen(3000);" > app.js
EXPOSE 3000
CMD ["node","app.js"]
