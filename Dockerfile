FROM public.ecr.aws/bitnami/python:latest

# tell the port number the container should expose
EXPOSE 5000

# run the command
CMD ["python", "./app.py"]