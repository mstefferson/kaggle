FROM pytorch/pytorch:latest
ADD requirements.txt /app/requirements.txt
# set working directory to /app/
WORKDIR /app/
# set up pip
RUN pip install --upgrade pip
# install python dependencies
RUN pip install -r requirements.txt
# create unprivileged user
RUN adduser --disabled-password --gecos ‘’ myuser
# Run initial command
CMD jupyter notebook --ip 0.0.0.0 --allow-root --no-browser
