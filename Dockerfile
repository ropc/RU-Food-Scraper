FROM debian:latest
RUN apt-get update && apt-get -y install \
    python3 \
    python3-pip \
 && rm -rf /var/lib/apt/lists/*
# RUN mkdir /RU-Food-Scraper
WORKDIR /rufoodscraper
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY scrape.py .
CMD ["python3", "scrape.py", "Food.json"]