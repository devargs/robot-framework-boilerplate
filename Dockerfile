FROM python:3

# The root directory inside the docker container
WORKDIR /usr/src/app

# Get the latest version of pip installed
RUN python -m pip install --upgrade pip

# Copy the requirements file and the output folder
COPY requirements.txt ./

# Install robot framework and dependencies
RUN python3 -m pip install -r requirements.txt

# Define your Saucelabs credentials (DON'T COMMIT YOUR OWN CREDENTIALS)
ENV SAUCE_USERNAME=[username]
ENV SAUCE_ACCESS_KEY=[access-key]