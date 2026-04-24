#!/bin/bash

echo "Waiting for database..."

until pg_isready -h db -p 5432; do
  echo "Database is not ready yet..."
  sleep 2
done

echo "Database is ready!"


alembic upgrade head

gunicorn main:app \
  --workers 4 \
  --worker-class uvicorn.workers.UvicornWorker \
  --bind=0.0.0.0:8000
