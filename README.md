# Web Server on GoLang

## Build gowebsvr Server

  ```
  $ go mod tidy
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
  $ ./gowebsvr -p 8000 -m " Welcome to GoWebSvr ( _/\_ ) "
  ```
  custome message will be served on '/greet' endpoint

  In this case;

  ```
  $ curl http://localhost:8000/greet
   Welcome to GoWebSvr ( _/\_ ) 
  ```
  If no -m provided; default message will be "Message"

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

## Random String/Text Generation : endpoint /randomtest /random1k /random1m
  Various endpoints have been added to generate random string.
  ```
  /randomtest -  It will generate 256KB of random string each time called
  /random1k   -  It will generate 1KB of random string each time called
  /random1m   -  It will generate 1MB of random string each time called
  ```
## Random String/Text Generation with user specific size : endpoint /random
  If you like to generate a specific size(in bytes) then pass that as a query size param on /random endpoint.

  For Example: to generate 100 bytes of random text, we fire as:
  ```
  $ curl http://localhost:8000/random?size=100

  BpLnfgDsc2WD8F2qNfHK5a84jjJkwzDkh9h2fhfUVuS9jZ8uVbhV3vC5AWX39IVUWSP2NcHciWvqZTa2N95RxRTZHWUsaD6HEdz0
  ```


# Docker 

How about Docker; Yes... just fire the below and you are all set.

  ```
  $ docker run -p 80:80 pksingh/gowebsvr
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

## Running Docker container with different host port 
  ```
  $ docker run -p 8000:80 gowebsvr
  ```

