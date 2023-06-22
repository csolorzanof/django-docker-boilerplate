FROM python:3.11.4-alpine3.18

RUN apk add --update --no-cache\
    bash

WORKDIR /code

COPY ./api /code

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

#ENTRYPOINT [ "python3", "manage.py"]

CMD [ "/code/startup.sh" ]