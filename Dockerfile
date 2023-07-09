FROM python:3.8

WORKDIR /app

COPY Pipfile* ./

RUN pip install pipenv && \
    pipenv install --system --deploy

COPY . .

CMD ["uvicorn", "app:main", "--host", "0.0.0.0", "--port", "8000"]
