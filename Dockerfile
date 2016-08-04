FROM desktopcontainers/base-mate

MAINTAINER MarvAmBass (https://github.com/DesktopContainers)

RUN apt-get -q -y update && \
    apt-get -q -y install easytag && \
    apt-get -q -y clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo "#!/bin/bash\neasytag \$*\n" > /bin/ssh-app.sh; \
    mkdir -p /rips && \
    chown app.app -R /rips

VOLUME ["/rips"]
