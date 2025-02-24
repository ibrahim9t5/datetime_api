FROM python:3.9-slim-buster

WORKDIR /datetime_api

# Install timezone data
RUN apt-get update && apt-get install -y tzdata

# Set the desired timezone.
ENV TZ=Asia/Karachi
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "datetime_api.py"]