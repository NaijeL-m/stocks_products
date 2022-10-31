FROM python:3.9
COPY . /src

COPY ./requirements.txt /src/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /src/requirements.txt

EXPOSE 6060

WORKDIR src

CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver"]