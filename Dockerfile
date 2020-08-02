#IMAGEN BASE DEL CONTENEDOR
FROM tensorflow/tensorflow:latest

## ACTUALIZO LOS PAQUETES DE VAEX Y SUS DEPENDENCIAS
RUN apt-get update \
    && pip install numpy \
    && pip install ipywidgets \
    && pip install bqplot \
    && pip install vaex \
    && pip install sklearn[complete] \
    && pip install jupyterthemes

##EJECUTO EL TEMA DE JUPYTER THEME
RUN jt -t monokai -f fira -fs 13 -nf ptsans -nfs 11 -N -kl -cursw 5 -cursc r -cellw 95% -T

#OCTAVO PASO: VOY A A DIRECCION DEL HOME
RUN cd /home

# ULTIMO PASO: ENCIENDO JUPYTER 
CMD jupyter notebook --ip=0.0.0.0 --allow-root


