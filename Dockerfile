FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
    fontconfig \
    libfreetype6-dev \
    libsdl2-ttf-2.0-0 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD [ "python", "snake_game.py" ]