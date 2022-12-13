FROM python:3.7-alpine

RUN apk update
RUN apk add make automake gcc g++ subversion python3-dev jpeg-dev zlib-dev


ADD main.py .
ADD requirements.txt .

RUN pip3 install --upgrade pip
RUN pip3 install -r /requirements.txt

CMD ["python", "./main.py"]