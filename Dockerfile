FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# The EXPOSE instruction is for documentation purposes and does not publish the port.
EXPOSE 3000

CMD ["npm", "run", "dev"]

# docker build -t my-docker-app .
# docker run -d -p 3000:3000 my-docker-app
# docker run -d -p 3000:3000 --name my-docker-app my-docker-app
# docker ps
# docker stop my-docker-app
# docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d -p 33060:3306 mysql