# docker-image-redis-sentinel
This project is for the docker image of redis sentinel

$>docker run -d --name redis-sentinel01 --link redis-master kilsoo75/redis-sentinel
$>docker run -d --name redis-sentinel02 --link redis-master kilsoo75/redis-sentinel
$>docker run -d --name redis-sentinel03 --link redis-master kilsoo75/redis-sentinel
