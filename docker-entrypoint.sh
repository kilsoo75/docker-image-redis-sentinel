#!/bin/sh
set -e

# replace master password

if [ "x$MASTER_PASSWORD" != "x" ]
then
	sed -i 's/masterpassword/'"$MASTER_PASSWORD"'/g' /usr/local/etc/redis/redis-sentinel.conf
else
	sed -i 's/masterpassword/'"$MASTER_DEFAULT_PASSWORD"'/g' /usr/local/etc/redis/redis-sentinel.conf
fi


# first arg is `-f` or `--some-option`
# or first arg is `something.conf`

if [ "${1#-}" != "$1" ] || [ "${1%.conf}" != "$1" ]; then
	set -- redis-server "$@"
fi

# allow the container to be started with `--user`
if [ "$1" = 'redis-server' -a "$(id -u)" = '0' ]; then
	chown -R redis .
	exec gosu redis "$0" "$@"
	echo "process is here?"
fi

exec "$@"
