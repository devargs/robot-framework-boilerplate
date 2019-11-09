#!/bin/bash

# Ask for the Saucelabs credentials
echo Your Saucelabs username/accesskey can be found at saucelabs.jnj.com under your User Settings 
echo Please enter your Saucelabs username:
read username

echo And your access key:
read -s accesskey

# Update the Dockerfile with the Saucelabs credentials
sed -i s/SAUCE_USERNAME=.*/SAUCE_USERNAME=$username/ Dockerfile
sed -i s/SAUCE_ACCESS_KEY=.*/SAUCE_ACCESS_KEY=$accesskey/ Dockerfile

# Build the docker image
docker build -t jnj-robot .