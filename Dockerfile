FROM jupyter/scipy-notebook 


USER root
RUN apt-get update && \
    apt-get install -y octave && \ 
    apt-get clean

USER jovyan

RUN pip install octave_kernel && \ 
    export OCTAVE_EXECUTABLE=$(which octave)
