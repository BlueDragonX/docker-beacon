FROM bluedragonx/baseimage:0.2
MAINTAINER Ryan Bourgeois <bluedragonx@gmail.com>

# set up the container environment
ENTRYPOINT ["/sbin/my_init"]
ENV GOPATH /usr/share/go 

# install packages
RUN apt-get update -qy && \
    apt-get install -qy bzr git-core golang

# update go
RUN go get launchpad.net/godeb && go install launchpad.net/godeb && \
    apt-get remove -y golang && apt-get autoremove -y && \
    $GOPATH/bin/godeb install 1.2.1

# clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install beacon
RUN echo "beacon v1.0" && \
    go get gopkg.in/BlueDragonX/beacon.v1 && \
    go install gopkg.in/BlueDragonX/beacon.v1
ADD files/run /etc/service/beacon/run
