FROM jupyter/scipy-notebook:lab-3.2.8

USER jovyan

RUN git clone https://github.com/snati-nue/stl15.git ./dask-sql-binder
RUN cd dask-sql-binder && conda env update -f binder/environment.yml && . binder/postBuild && cd ..
