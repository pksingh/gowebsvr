FROM scratch
LABEL maintainer="Prasanta Singh <singh.prasanta@gmail.com>"

COPY ./gowebsvr  .
CMD ["./gowebsvr"]
 
EXPOSE 80
