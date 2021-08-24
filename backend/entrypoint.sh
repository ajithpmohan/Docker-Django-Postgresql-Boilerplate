#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    bash -c 'while !</dev/tcp/$SQL_HOST/$SQL_PORT; do sleep 1; done;'

    echo "PostgreSQL started"
fi

python manage.py flush --no-input
python manage.py migrate

exec "$@"
