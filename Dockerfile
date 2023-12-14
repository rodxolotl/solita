# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask and expose port 8000
RUN pip install flask
EXPOSE 8000

# Define environment variable
ENV FLASK_APP=test.py

# Run the Flask application on container startup
CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]

