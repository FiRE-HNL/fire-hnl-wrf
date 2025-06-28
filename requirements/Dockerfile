# Start from your WRF runtime container
# There are several errors using this iwrf container
# and I do not have time to deal with it right now
# FROM ncar/iwrf:20241203
FROM kkeene44/wrf-coop:version16

# Install Python (let's pick Python 3.10, which is default on Ubuntu 22.04)
RUN apt update && \
    apt install -y python3 python3-pip && \
    ln -s /usr/bin/python3 /usr/bin/python

# Upgrade pip (recommended)
RUN pip install --upgrade pip

# Install required Python packages
RUN pip install \
    omegaconf \
    jinja2 \
    requests \
    pandas

# (Optional) Set the working directory to wrfuser home
# WORKDIR /home/wrfuser
