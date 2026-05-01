# Use Python 3.10 as the base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Install system dependencies (needed for Telethon/Networking)
RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy the requirements file first for caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port used by the dashboard (Hugging Face default)
EXPOSE 7860

# Set environment variables for Python
ENV PYTHONUNBUFFERED=1
ENV PORT=7860

# Command to run the dashboard
CMD ["python", "super_dashboard.py"]
