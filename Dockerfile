# Use a standard Python 3.9 base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY app.py .

# Expose the port our app will run on
EXPOSE 8080

# The command to start the production server
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
