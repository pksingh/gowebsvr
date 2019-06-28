FROM scratch
LABEL maintainer="Prasanta Singh <singh.prasanta@gmail.com>"

COPY .  .
CMD ["./gowebsvr"]
 
EXPOSE 80
