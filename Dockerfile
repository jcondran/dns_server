FROM pihole/pihole:latest


### Install and start cloudflared ###
RUN wget https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.deb \
    && apt-get install ./cloudflared-stable-linux-amd64.deb

ADD ./config.yml /etc/cloudflared/config.yml
RUN cloudflared service install --legacy
RUN systemctl enable cloudflared    # not needed?
