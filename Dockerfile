#
# Usage:
#   docker build -t netflix-dns .
#   docker run -p 10053:10053/udp netflix-dns
#

FROM python:3

ADD server.py /
RUN pip install twisted

CMD [ "python", "server.py" ]
EXPOSE 10053

