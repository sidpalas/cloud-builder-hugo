# First stage uses busybox image to 
# take advantage of wget + tar utilities
FROM busybox
ENV HUGO_VERSION=0.64.1
RUN wget -O- https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz | tar zx

# Second stage copies the hugo binary into 
# an minimal Linux, glibc runtime image
# https://github.com/GoogleContainerTools/distroless/tree/master/cc
FROM gcr.io/distroless/cc
ENV HUGO_ENV=production
ENTRYPOINT ["/hugo"]
COPY --from=0 /hugo /