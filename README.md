# docker-image-redis-sentinel

#### This project is for the docker image of redis sentinel

<pre><code>$>docker run -d --name redis-sentinel01 --link redis-master kilsoo75/redis-sentinel
$>docker run -d --name redis-sentinel02 --link redis-master kilsoo75/redis-sentinel
$>docker run -d --name redis-sentinel03 --link redis-master kilsoo75/redis-sentinel</code></pre>

If you don't use the default masterauth value, you should set the MASTER_PASSWORD like following.

<pre><code>$>docker run -d --name redis-sentinel01 --link redis-master -e MASTER_PASSWORD=mypwd kilsoo75/redis-sentinel</code></pre>