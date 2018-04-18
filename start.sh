#!/bin/bash
# Start Gunicorn processes
ENV PATH /usr/local/bin:$PATH
echo "Starting Gunicorn."
exec gunicorn mysite.wsgi \
    --bind 0.0.0.0:8000 \
    --workers 2
