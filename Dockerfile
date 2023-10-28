FROM python:latest
WORKDIR /app
RUN python3 -m venv venv
COPY requirements.txt .
RUN . venv/bin/activate && pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["venv/bin/python", "app.py"]