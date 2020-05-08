FROM python:3.8.2
COPY . /app
WORKDIR /app
RUN apt-get update
RUN apt-get install -y python3-pip 
RUN chmod +rwx test.py
RUN python3 test.py
ENTRYPOINT ["python"]
CMD ["test.py"]
EXPOSE 5000
