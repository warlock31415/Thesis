FROM jupyter/scipy-notebook 


USER root
RUN apt update && \
    apt install -y octave liboctave-dev&& \ 
    apt clean

USER jovyan

RUN pip install octave_kernel && \ 
    export OCTAVE_EXECUTABLE=$(which octave)
