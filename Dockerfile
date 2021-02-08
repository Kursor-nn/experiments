FROM node:6.14.2
EXPOSE 8080
RUN mkdir -p /usr/application/
WORKDIR /usr/application/
COPY server_dev.js .
COPY entrypoint.sh .

RUN chmod +x /usr/application/entrypoint.sh
RUN chmod +x /usr/application/server_dev.js

CMD [ "/usr/application/entrypoint.sh" ]

