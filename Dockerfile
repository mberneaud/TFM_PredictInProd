FROM python:3.8.6-buster

COPY TaxiFareModel /TaxiFareModel
COPY api /api
COPY requirements.txt /requirements.txt
COPY model.joblib /model.joblib
COPY /home/malte/code/gcloud_keys/le-wagon-328012-f8d28f54b9ce.json /credentials.json

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD uvicorn api.fast:app --host 0.0.0.0 --port $PORT
