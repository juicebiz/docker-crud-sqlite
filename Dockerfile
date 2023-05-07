FROM python:3.9

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 5000

COPY . .

CMD [ "python", "manage.py", "migrate" ]
CMD [ "python", "manage.py", "runserver", "0.0.0.0:5000" ]
