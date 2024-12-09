# Use a minimal base image
FROM python:3.11-slim

# Set a working directory
WORKDIR /app

# Copy requirements early to leverage layer caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose the port and specify the entrypoint
EXPOSE 8000
ENTRYPOINT ["python", "app.py"]
