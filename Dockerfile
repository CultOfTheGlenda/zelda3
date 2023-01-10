FROM emscripten/emsdk:3.1.29

WORKDIR /app

COPY requirements.txt requirements.txt

RUN apt-get update
RUN apt-get install -y libsdl2-dev python3

RUN pip install -r requirements.txt
