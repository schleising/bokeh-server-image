FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED 1

# Install the build tools
RUN apt update && apt install -y build-essential libgdal-dev

# Make the code directory
RUN mkdir /code
WORKDIR /code

# Install requirements for the covid charts script
COPY requirements.txt /code/
RUN pip install -r requirements.txt

# Run a command to ensure the container does not exit
CMD [ "bokeh", "serve", "--allow-websocket-origin=localhost:8001", "--allow-websocket-origin=schleising.net", "--allow-websocket-origin=www.schleising.net", "--allow-websocket-origin=stephensmacbook:8001", "--glob", "*.py" ]
