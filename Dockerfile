FROM debian:latest
RUN apt-get update && apt-get -y install git python3 python3-pip
RUN git clone https://github.com/ropc/RU-Food-Scraper.git
RUN pip3 install -r RU-Food-Scraper/requirements.txt
CMD l"python3", "RU-Food-Scraper/scrape.py", "Food.json"]