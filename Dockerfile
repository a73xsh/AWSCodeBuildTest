FROM public.ecr.aws/docker/library/python:3

WORKDIR /usr/src/app

COPY app.py . 
# tell the port number the container should expose
EXPOSE 5000

# run the command
CMD ["python", "./app.py"]