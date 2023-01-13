FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
WORKDIR /app
CMD streamlit run app.py --server.port $PORT
