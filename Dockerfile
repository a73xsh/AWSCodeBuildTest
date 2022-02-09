FROM public.ecr.aws/docker/library/python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# tell the port number the container should expose
EXPOSE 5000

# run the command
CMD ["python", "./app.py"]