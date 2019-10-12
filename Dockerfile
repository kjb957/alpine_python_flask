FROM arm32v6/alpine:3.10.2
RUN apk update\
  && apk add --no-cache bash git  gcc gfortran python3 python3-dev py-pip build-base wget freetype-dev libpng-dev openblas-dev\
  && rm -rf /var/cache/apk/*\
  && pip3 install flask flask_restful flask_table pigpio redis numpy requests\
  && apk del git gcc gfortran python3-dev py-pip build-base wget freetype-dev libpng-dev\
  && rm -rf /var/cache/apk/*\
