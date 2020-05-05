#!/bin/bash

# Collect static files
echo "Collect static files"
python manage.py collectstatic --noinput

# Apply database migrations
echo "Apply database migrations"
python manage.py migrate

# Start server
echo "Starting server"
gunicorn -b 0.0.0.0:8000 --workers=2 --threads=4 --worker-class=gthread django_docker.wsgi