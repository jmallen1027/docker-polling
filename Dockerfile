FROM python:3
RUN python -m pip install --upgrade pip 
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code
