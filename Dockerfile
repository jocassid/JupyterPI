
# Python 3.7.1 runtime as base
FROM python:3.7.1-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Command to run when container starts
CMD ["jupyter-notebook"]
