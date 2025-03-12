# Use official Python image as base
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Copy all files from repo to container
COPY . .

# Run example.py when the container starts
CMD ["python", "example.py"]
