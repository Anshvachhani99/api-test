# Python base image use karein
FROM python:3.9

# Work directory set karein
WORKDIR /app

# Dependencies copy karein
COPY backend/requirements.txt .
RUN pip install -r requirements.txt

# Flask app copy karein
COPY backend /app

# Flask server start karein
CMD ["python", "flask_app.py"]
