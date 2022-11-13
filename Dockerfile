FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install --no-cahce-dir -r requirements.txt

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]