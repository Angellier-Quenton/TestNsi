FROM ubuntu

USER root
RUN sed -i 's:^path-exclude=/usr/share/man:#path-exclude=/usr/share/man:'         /etc/dpkg/dpkg.cfg.d/excludes

RUN apt-get update &&     apt-get install -y         man         manpages-posix
#RUN apt-get install -y conda-forge python=3.7 bokeh=1.1.0 dask=2.0.0 dask-image=0.2.0 dask-ml=1.0.0 jupyterlab>=1.0 nodejs=8.9 notebook>=5.7.5 tornado=5 numba numpy pip pandas pyarrow==0.12.0 python-graphviz seaborn scikit-learn=0.20 matplotlib nbserverproxy nomkl h5py xarray bottleneck requests py-xgboost

#RUN pip install --no-cache-dir notebook==5.* dask_xgboost mimesis dask-labextension>=1.0 bash_kernel

ARG NB_USER=professeur
ARG NB_UID=1001
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --uid ${NB_UID} \
    ${NB_USER}

ARG NB_USER=max
ARG NB_UID=1002
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --uid ${NB_UID} \
    ${NB_USER} \
    --ingroup eleve

ARG NB_USER=elsa
ARG NB_UID=1003
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --uid ${NB_UID} \
    ${NB_USER} \
    --ingroup eleve

ARG NB_USER=professeur
ARG NB_UID=1001
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}
  
# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

ENTRYPOINT []

