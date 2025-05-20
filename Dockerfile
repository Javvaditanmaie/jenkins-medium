# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any Python dependencies listed in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000

# Command to run your Python script
CMD ["python", "main.py"]

