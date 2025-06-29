# Start from your WRF runtime container
# There are several errors using this iwrf container
# and I do not have time to deal with it right now
#FROM ncar/iwrf:20241203
FROM nasanccs/fire-hnl-wrf-baselibs:latest

# Install Python 3 (Rocky 8 provides Python 3.6 by default, but you can enable newer if needed)
RUN dnf -y update && \
    dnf -y install python3.11 && \
    ln -s /usr/bin/python3.11 /usr/bin/python

# Upgrade pip (recommended)
RUN python -m pip install --upgrade pip

# Install required Python packages
RUN pip install \
    omegaconf \
    jinja2 \
    requests \
    pandas

# (Optional) Set the working directory to wrfuser home
# WORKDIR /home/wrfuser
