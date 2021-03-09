FROM debian:buster
RUN apt update
RUN apt install -y libwebkit2gtk-4.0-37 chromium libxss1
COPY nwjs-sdk-v0.38.4-linux-x64.tar.gz /tmp/
RUN tar xvzf /tmp/nwjs-sdk-v0.38.4-linux-x64.tar.gz -C /opt/.
RUN rm /tmp/nwjs-sdk-v0.38.4-linux-x64.tar.gz
ENTRYPOINT exec /opt/nwjs-sdk-v0.38.4-linux-x64/nw --opengl-import /root
