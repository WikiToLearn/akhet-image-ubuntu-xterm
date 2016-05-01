FROM        akhetbase/akhet-base-ubuntu-16-04

# fix qt problem
ENV QT_GRAPHICSSYSTEM native

RUN apt-get update && apt-get -y --force-yes install xterm && rm -f /var/cache/apt/archives/*deb && find /var/lib/apt/lists/ -type f -delete && find /var/log/ -type f -delete

RUN apt-get update && apt-get -y --force-yes install htop && rm -f /var/cache/apt/archives/*deb && find /var/lib/apt/lists/ -type f -delete && find /var/log/ -type f -delete
RUN apt-get update && apt-get -y --force-yes install nano vim && rm -f /var/cache/apt/archives/*deb && find /var/lib/apt/lists/ -type f -delete && find /var/log/ -type f -delete

ADD ./xterm.conf /etc/supervisor/conf.d/
