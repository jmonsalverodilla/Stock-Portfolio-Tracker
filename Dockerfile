# init a base image
FROM python:3.7.10-slim
# define the present working directory
WORKDIR /code
# copy the contents into the working dir
ADD . /code
# run pip to install the dependencies of the flask app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
# expose a port
EXPOSE $PORT
# ENTRYPOINT
CMD ["sh", "-c", "streamlit run --server.port $PORT stock_portfolio_analyzer.py"]
#CMD streamlit run --server.port $PORT stock_portfolio_analyzer.py