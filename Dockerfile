FROM python:3.7-slim-stretch
COPY . .
RUN pip3 install -r requirements.txt
ENV FLASK_APP=src/app.py
ENV FLASK_ENV=development
CMD ["flask", "run", "--host=0.0.0.0"]
