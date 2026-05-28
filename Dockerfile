FROM python:3.11-slim AS builder

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY mkdocs.yml .
COPY docs ./docs

RUN mkdocs build

FROM nginx:alpine

LABEL org.opencontainers.image.source="https://github.com/Rainboylvx/python-tutorial"

COPY --from=builder /app/site /usr/share/nginx/html

EXPOSE 80
