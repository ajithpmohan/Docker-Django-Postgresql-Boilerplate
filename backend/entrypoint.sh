#!/bin/bash

if [ "$SQL_HOST" = "db" ]
then
    echo "Waiting for postgres..."

    while !</dev/tcp/$SQL_HOST/$SQL_PORT; do sleep 1; done;

    echo "PostgreSQL started"
fi

# python manage.py flush --no-input
# python manage.py migrate

exec "$@"
