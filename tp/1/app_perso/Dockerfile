FROM python:3.12-slim

WORKDIR /app_perso

COPY ./dep.txt .

RUN pip install --no-cache-dir -r dep.txt

COPY ./app.py .

CMD ["python", "app.py"]
