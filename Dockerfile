# Use the latest official Python image
FROM python:latest

# Set the working directory in the container to /app
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install Flask

# Copy the current directory contents into the container at /app
COPY . /app/

# Command to run the application
CMD ["python", "app.py"]
