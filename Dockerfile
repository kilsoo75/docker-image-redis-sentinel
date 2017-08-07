FROM redis
COPY redis-sentinel.conf /usr/local/etc/redis/redis-sentinel.conf
WORKDIR /usr/local/etc/redis/
RUN chown redis:redis redis-sentinel.conf
ENV REDIS_PASSWORD dummypassword
WORKDIR /data
EXPOSE 16379
CMD [ "redis-server", "/usr/local/etc/redis/redis-sentinel.conf", "--sentinel" ]

