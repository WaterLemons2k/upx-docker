FROM busybox:uclibc AS dl
ARG VERSION
RUN wget https://github.com/upx/upx/releases/download/v$VERSION/upx-$VERSION-amd64_linux.tar.xz &&\
    tar xf upx-$VERSION-amd64_linux.tar.xz --strip-components 1

FROM scratch
COPY --from=dl upx /bin/
ENTRYPOINT ["/bin/upx"]