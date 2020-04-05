FROM ubuntu

USER root
RUN sed -i 's:^path-exclude=/usr/share/man:#path-exclude=/usr/share/man:'         /etc/dpkg/dpkg.cfg.d/excludes
RUN apt-get update &&     apt-get install -y         man         manpages-posix

ARG NB_USER=professeur
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

RUN adduser max --disabled-password --ingroup eleve
RUN adduser elsa --disabled-password --ingroup eleve
  
# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

   19  su elsa
   20  apt-get install jupyter-lab
   21  apt-get install jupyter
   22  pip 
   23  sudo apt-get remove jupyter
   24  apt-get remove jupyter
   25  apt-get install pip
   26  python3
   27  python3 
   28  apt-get install python-setuptools
   29  apt-get install python3-venv python3-pip
   30  pip install --no-cache-dir notebook==5.*
   31  python3 -m pip
   32  python3 -m pip install --no-cache-dir notebook==5.*
