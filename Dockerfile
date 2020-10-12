#Filippov
FROM python
WORKDIR /app
COPY requirements.txt .
COPY myproxy.py .
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["gunicorn", "-b", "0.0.0.0:8000", "myproxy:app"]