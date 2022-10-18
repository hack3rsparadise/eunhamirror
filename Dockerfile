FROM ghcr.io/amirulandalib/mltb-alpine-docker:latest

# if you want to load image from dockerhub then replace the above one with this one 👇
# FROM amirulandalib/mltb-alpine-docker:latest
# FROM ghcr.io/amirulandalib/mltb-alpine-docker:latest
# FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
