FROM fredblgr/ubuntu-novnc:20.04

RUN apt-get update -y ; \
    apt-get upgrade -y ; \
    apt-get install openjdk-11-jdk -y

RUN apt autoremove && apt autoclean

COPY resources/eclipse-tesl-2020-06.tgz /usr/local/

RUN cd /usr/local ; tar zxf eclipse-tesl-2020-06.tgz && \
    rm eclipse-tesl-2020-06.tgz && \
    ln -s /usr/local/eclipse-tesl-2020-06/eclipse /usr/local/bin/eclipse

COPY resources/Eclipse.desktop /usr/share/applications/
COPY resources/dot_eclipse /root/.eclipse
RUN echo 'cp -r /root/.eclipse ${HOME}' >> /root/.novnc_setup

COPY resources/dot_config/lxpanel/LXDE/panels/panel /root/.config/lxpanel/LXDE/panels/panel