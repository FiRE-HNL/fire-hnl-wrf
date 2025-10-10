# Start from your WRF runtime container
FROM nasanccs/fire-hnl-wrf-baselibs:latest

# Install Python 3.11 and pip
RUN dnf -y update && \
    dnf -y install python3.11 python3.11-pip && \
    ln -sf /usr/bin/python3.11 /usr/bin/python && \
    ln -sf /usr/bin/pip3.11 /usr/bin/pip

# Install build dependencies for wrf-python
RUN dnf -y install \
    python3.11-devel \
    gcc \
    gcc-c++ \
    hdf5-devel \
    libffi-devel \
    openblas-devel \
    git

# Export netCDF variables
ENV NETCDF=/wrf/libs/netcdf
ENV LD_LIBRARY_PATH=/usr/local/lib:/usr/local/lib/openmpi:/wrf/libs/netcdf/lib:$LD_LIBRARY_PATH
ENV CFLAGS="-I${NETCDF}/include"
ENV LDFLAGS="-L${NETCDF}/lib"

# Upgrade pip
RUN python -m pip install --upgrade pip

# Install Python packages (wrf-python last, so you see errors clearly)
RUN pip install \
    "numpy<2.0" \
    omegaconf \
    jinja2 \
    requests \
    pandas \
    netCDF4 \
    xarray \
    rasterio \
    metpy \
    geopandas \
    rioxarray \
    xwrf \
    git+https://github.com/NCAR/wrf-python.git@main
