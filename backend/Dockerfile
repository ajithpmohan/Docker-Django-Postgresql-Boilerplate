# The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM python:3.9.5-slim

# Set enviroment variables - Prevents Python from writing pyc files to disc
ENV PYTHONDONTWRITEBYTECODE 1

# Prevents Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED 1

# Set the working directory
ENV BASE_DIR=/usr/src/app
ENV APP_DIR=$BASE_DIR/backend
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

# Set assets directory
ENV ASSETS_DIR=$BASE_DIR/assets
RUN mkdir -p $ASSETS_DIR
RUN mkdir $ASSETS_DIR/staticfiles
RUN mkdir $ASSETS_DIR/mediafiles

# Copies everything over to Docker environment
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["/usr/src/app/backend/entrypoint.sh"]
