FROM tensorflow/tensorflow:1.15.5-jupyter

RUN pip install debugpy dm-sonnet==1.36 graphs

EXPOSE 5678

CMD ["python3","-m","debugpy", "--listen", "0.0.0.0:5678", "--wait-for-client","/tf/files/bad_poc.py"]