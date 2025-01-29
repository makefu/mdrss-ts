FROM oven/bun:1.1.42
WORKDIR /usr/src/app
COPY . .
RUN bun i
#RUN cat /usr/src/app/node_modules/@vueuse/core/index.mjs && exit 1
RUN bun fbuild
ENV NODE_ENV=production
ENV DB_URL=postgresql://barman:abcdef@127.0.0.1:5472/mdrss
#USER bun
EXPOSE 3001/tcp
# run the app
ENTRYPOINT "/usr/src/app/start.sh"
#ENTRYPOINT "bash"
