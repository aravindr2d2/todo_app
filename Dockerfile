FROM python:3.12-alpine

COPY ./requirements.txt /todo_app/requirements.txt

WORKDIR /todo_app

RUN pip install -r requirements.txt

COPY . /todo_app

ENTRYPOINT ["python3"]

CMD ["app.py"]
