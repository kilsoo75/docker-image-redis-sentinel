FROM redis
COPY redis-sentinel.conf /usr/local/etc/redis/redis-sentinel.conf
ENV REDIS_PASSWORD dummypassword
CMD [ "redis-server", "/usr/local/etc/redis/redis-sentinel.conf" ,"--sentinel"]

