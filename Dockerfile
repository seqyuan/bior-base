FROM continuumio/miniconda3:latest

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

RUN apt-get update && \
		apt-get install -y \
		libssl-dev \
		gdebi-core \
		#libcurl4-gnutls-dev \
		libcairo2-dev \
		libxt-dev \
		xtail \
		build-essential \
		libxml2-dev \
		libcurl4-openssl-dev \
		libhdf5-dev \
		libudunits2-dev \
		locales \
		imagemagick && \
		if [ -e /bin/sh ];then rm /bin/sh ; fi && \
		if [ -e /bin/bash ];then ln -s /bin/bash /bin/sh ; fi \
		echo "LC_ALL=en_US.UTF-8" >> /etc/environment \
		echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
		echo "LANG=en_US.UTF-8" > /etc/locale.conf \
		locale-gen en_US.UTF-8

RUN conda install r-base=4.3.1
#ADD install_cmd.R /tmp/
ADD add_mirror.sh /tmp/

RUN sh /tmp/add_mirror.sh
#		/opt/conda/bin/Rscript /tmp/install_cmd.R


