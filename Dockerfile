FROM python:3.10.19

RUN pip install numpy

COPY . .

CMD [ "python", "./src/main.py" ]