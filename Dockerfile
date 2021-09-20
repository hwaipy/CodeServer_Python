FROM hwaipy/codeserverbase:latest

# Install Python & pip
RUN apt-get update
RUN apt-get remove python -y
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get remove python -y
RUN apt-get autoremove python3 -y
RUN apt-get install python3.8 -y
# # RUN apt-get install python3.8-dev -y
RUN apt-get install python3.8-distutils -y
RUN curl https://bootstrap.pypa.io/get-pip.py | python3.8

# Set locales
RUN apt-get -y install locales
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

# Prepare extensions
RUN code-server --install-extension ms-python.python

# Prepare Env
ENV PYTHONPATH=${PYTHONPATH}:/home/workspace/
