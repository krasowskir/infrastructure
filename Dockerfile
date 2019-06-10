FROM jenkins/jenkins:lts
ENV CURL_CONNECTION_TIMEOUT=30
ENV JENKINS_UC_DOWNLOAD="http://ftp-nyc.osuosl.org/pub/jenkins"
ENV PASSWORD=pelikan16
ENV GIT_PASSWORD=pelikan
ENV GIT_USER=richard
ENV CASC_JENKINS_CONFIG=/usr/share/jenkins/meinZeug/meineConfig.yml
VOLUME /usr/share/jenkins/meinZeug
COPY plugins.txt /usr/share/jenkins/
USER root
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
