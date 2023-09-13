FROM python:3.9-alpine
MAINTAINER Hovhannes Stepanyan

COPY ./bot.py ./bot.py
COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

CMD ["python", "bot.py"]
