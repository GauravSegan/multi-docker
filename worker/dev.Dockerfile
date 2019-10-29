FROM node:alpine
WORKDIR '/app'
COPY ./package.json ./
RUN npm install
COPY . .
CMD ["npm", "run", "dev"]
## "dev" is nodemon tool for server and worker. 
##Nodemon is a cmd line tool that auto reloads entire project whenever 
##any source code in the project changes.
