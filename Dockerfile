FROM python:3.6.3-alpine3.6

WORKDIR /usr/src/intellead/intellead-fitscore/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py service.py ./

EXPOSE 5000

CMD [ "python", "./app.py" ]