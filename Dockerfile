FROM python:3.10

RUN pip install spacy
RUN python -m spacy download en_core_web_sm

WORKDIR /app
ADD script.py .

ENTRYPOINT ["python", "/app/script.py"]