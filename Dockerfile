FROM tutum/apache-php

ENV PIWIK_VERSION 2.9.1

RUN rm -rf /app
RUN curl -L -O http://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz
RUN tar -xzf piwik-${PIWIK_VERSION}.tar.gz
RUN mv piwik /app
RUN chmod a+w /app/tmp && \
    chmod a+w /app/config

EXPOSE 80
VOLUME /app/config
CMD ["/run.sh"]
