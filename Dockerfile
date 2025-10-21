FROM python:3.11-slim

RUN apt-get update && apt-get install -y poppler-utils libgl1 libglib2.0-0 && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . .
RUN pip install --upgrade pip && pip install -r requirements.txt

CMD ["gunicorn", "app:app"]
