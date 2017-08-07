FROM redis
COPY redis-sentinel.conf /usr/local/etc/redis/redis-sentinel.conf
ENV REDIS_PASSWORD dummypassword
EXPOSE 16379
CMD [ "redis-server", "/usr/local/etc/redis/redis-sentinel.conf", "--sentinel" ]
#ENTRYPOINT ["redis-sentinel", "/usr/local/etc/redis/redis-sentinel.conf"]

