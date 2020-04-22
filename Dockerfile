FROM node:latest
WORKDIR /app
COPY start.sh .
RUN chmod +x start.sh
ENV DATADIR /data
ENV HOST 0.0.0.0
ENV PORT 8080
RUN npm install -g tiddlywiki
EXPOSE $PORT
CMD /app/start.sh
