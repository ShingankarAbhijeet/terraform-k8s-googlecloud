FROM python:3.7-slim

ENV APP_HOME /app 
WORKDIR $APP_HOME 
COPY . ./

RUN pip install Flask gunicorn

CMD exec gunicorn --bind :$PORT --workers 1 --thread 8 app:app