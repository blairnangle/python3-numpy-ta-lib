# Get base Python image
FROM python:3.9.7-buster

MAINTAINER "Blair Nangle" "hi@blairnangle.com"

# Upgrade pip3
RUN pip3 install --upgrade pip
RUN pip install --upgrade pip setuptools wheel

# Install NumPy
RUN pip3 install cython
RUN pip3 install numpy

# Install TA-Lib
RUN wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz && \
  tar -xvzf ta-lib-0.4.0-src.tar.gz && \
  cd ta-lib/ && \
  ./configure --prefix=/usr && \
  make && \
  make install
RUN git clone https://github.com/mrjbq7/ta-lib.git /ta-lib-py && cd ta-lib-py && python setup.py install
