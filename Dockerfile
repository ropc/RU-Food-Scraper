FROM debian:latest
RUN apt-get update && apt-get -y install python3 python3-pip
RUN mkdir /RU-Food-Scraper
WORKDIR /RU-Food-Scraper
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
CMD ["python3", "scrape.py", "Food.json"]