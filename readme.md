
```
docker run --entrypoint /bin/bash --rm -it --mount type=bind,source="$(pwd)"/api,target=/code postagram-api 
django-admin startproject CoreRoot .
exit
docker run --rm -it --mount type=bind,source="$(pwd)"/api,target=/code postagram-api migrate 
docker exec 3ee9 python manage.py migrate
```