FROM python:3.9-slim

RUN apt-get update && apt-get -y install firefox-esr xvfb python3-pip

COPY ./ ./

RUN pip3 install -r requirements.txt

EXPOSE 8080

CMD ["uvicorn", "webservice.main:app", "--host", "0.0.0.0", "--port", "8080"]
