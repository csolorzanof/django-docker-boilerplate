#!/usr/bin/env bash
set -e
/code/wait-for-it.sh db:5432 --strict --timeout=30
python /code/manage.py runserver 0.0.0.0:8000