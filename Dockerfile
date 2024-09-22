FROM python:3.12.6

WORKDIR /ohtelz-docs

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["bash", "-c", "cd ./output && python -m pelican.server"]

