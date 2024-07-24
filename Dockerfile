FROM python

WORKDIR /myapp

# COPY . /myapp

# Upgrade pip and install requirements
COPY requirements.txt /myapp
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y
RUN pip install -r requirements.txt

EXPOSE 5000


# Run
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]