FROM alpine:3.2

# Install Dependencies
RUN apk add --update python git python-dev py-pip gcc libgcc musl-dev && \
    pip install --upgrade pip

WORKDIR /home

COPY requirements.txt /home/
RUN pip install -r requirements.txt

COPY . /home

ENTRYPOINT ["python", "-m", "module"]

