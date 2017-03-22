FROM continuumio/miniconda
MAINTAINER myfunprograms

# RUN apt-get update -y && \ 
#    apt-get install python-pandas -y && \
#    apt-get install python-matplotlib -y

RUN conda create -n project python=2
RUN conda install -n project numpy psutil matplotlib pandas jupyter notebook scipy scikit-learn=0.17.1

COPY run_jupyter.sh /

WORKDIR /home

CMD ["/run_jupyter.sh"]

