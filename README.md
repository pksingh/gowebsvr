# Web Server on GoLang

## Build gowebsvr Server

  ```
  $ go build
  ```

## Running gowebsvr

  ```
  $ ./gowebsvr 
  gowebsvr is running on 80 port.
  ```

## Running on different Port; use -p port

  ```
  $ ./gowebsvr -p 8000
  2019/06/23 23:25:28 Listening on port 8000...
  ```
  if port number not provided; default port 80 will be used

## Serving custome message; use -m "msg"

  ```
  $ ./gowebsvr -p 8000 -m "my greeting msg"
  ```
  custome message will be served on '/greet' endpoint

  In this case;

  ```
  $ curl http://localhost:8000/greet
  my greeting msg
  ```
  If no -m provided; default message is be "Message"

  ```
  $ curl http://localhost:8000/greet
  Message   
  ```

## Echo Server : endpoint /echo

  ```
  $ ./gowebsvr -p 8000 
  ```
  In this case; 
  ```
  $ curl http://localhost:8000/echo

  {"Method":"GET","URL":{"Scheme":"","Opaque":"","User":null,"Host":"","Path":"/echo","RawPath":"","ForceQuery":false,"RawQuery":"","Fragment":""},"Proto":"HTTP/1.1","ProtoMajor":1,"ProtoMinor":1,"Header":{"Accept":["*/*"],"User-Agent":["curl/7.54.0"]},"Body":{"String":""},"ContentLength":0,"TransferEncoding":null,"Host":"localhost:8000","Trailer":null,"RemoteAddr":"[::1]:53638","RequestURI":"/echo"} 
  ```
  If no -m provided; default message is be "Message"
  ```
  $ curl http://localhost:8000/greet
  Message  
  ```

# Docker 

How about Docker; Yes... just fire the below and you are all set.

  ```
  $ docker run -p 80:8000 singhpk/gowebsvr
  ```
  
  Now you can build the docker image too.

  Note: Docker cli mustbe available on Host building/Running Docker container. 

  If you want to build this docker image; then make sure working directory is set to current path.

## Building Docker Image 

  ```
  $ docker build -t gowebsvr .
  ```
  Once the image build successful; you can verify using below.

  ```
  $ docker images | grep "gowebsvr"
  ```

## Running Docker container
  ```
  $ docker run -p 80:8000 gowebsvr -m " Welcome to GoWebSvr ( _/\_ ) "
  ```

