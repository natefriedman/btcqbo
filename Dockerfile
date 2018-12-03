FROM python:3

WORKDIR /btcqbo

COPY . /btcqbo

RUN pip install -r requirements.txt

EXPOSE 8001

CMD ["gunicorn", "-b :8001", "-w 2", "btcqbo:app"]
