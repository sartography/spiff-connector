FROM python:3.11.6-slim-bookworm AS base

WORKDIR /app

RUN pip install --upgrade pip
RUN pip install poetry==1.8.1 pytest-xdist==3.5.0

COPY . .
RUN poetry install --no-root

CMD ["poetry", "run", "pytest", "tests/"]