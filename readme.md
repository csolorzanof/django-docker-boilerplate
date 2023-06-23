
```
docker run --entrypoint /bin/bash --rm -it --mount type=bind,source="$(pwd)"/api,target=/code postagram-api 
django-admin startproject CoreRoot .
exit
docker run --rm -it --mount type=bind,source="$(pwd)"/api,target=/code postagram-api migrate 
docker exec 3ee9 python manage.py migrate
docker exec dbd4 django-admin startapp core
docker exec -w /code/core dbd4 django-admin startapp user
docker exec -w /code dbd4 python manage.py makemigrations
```