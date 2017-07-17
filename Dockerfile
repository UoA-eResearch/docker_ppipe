FROM gcr.io/earthengine-project/datalab-ee:latest
# Use testing to get GDAL2
COPY testing.list /etc/apt/sources.list.d/testing.list
RUN apt-get update && yes | apt-get install apt-utils
RUN apt-get update && yes | apt-get install gdal-bin python-imaging-tk python-imaging python-gdal build-essential
RUN git clone https://github.com/samapriya/Planet-GEE-Pipeline-CLI.git && cd Planet-GEE-Pipeline-CLI && python setup.py install && pip install -r requirements.txt
