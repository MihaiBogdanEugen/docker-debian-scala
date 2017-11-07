## Docker Debian images with Scala ##

### Supported tags and respective Dockerfile links: ###

* ```jessie-slim-2.11``` _\([jessie-slim-2.11/Dockerfile]\)_
[![](https://images.microbadger.com/badges/image/mbe1224/docker-debian-scala:jessie-slim-2.11.svg)](https://microbadger.com/images/mbe1224/docker-debian-scala:jessie-slim-2.11 "")
* ```jessie-slim-2.12``` _\([jessie-slim-2.11/Dockerfile]\)_
[![](https://images.microbadger.com/badges/image/mbe1224/docker-debian-scala:jessie-slim-2.11.svg)](https://microbadger.com/images/mbe1224/docker-debian-scala:jessie-slim-2.11 "")
* ```stretch-slim-2.11``` _\([stretch-slim-2.11/Dockerfile]\)_
[![](https://images.microbadger.com/badges/image/mbe1224/docker-debian-scala:stretch-slim-2.11.svg)](https://microbadger.com/images/mbe1224/docker-debian-scala:stretch-slim-2.11 "")
* ```stretch-slim-2.12```, ```latest``` _\([stretch-slim-2.12/Dockerfile]\)_ 
[![](https://images.microbadger.com/badges/image/mbe1224/docker-debian-scala:stretch-slim-2.12.svg)](https://microbadger.com/images/mbe1224/docker-debian-scala:stretch-slim-2.12 "")

#### All tag names follow the naming convention: ###

```debian_image_tag``` + '-' + ```scala_version```

### Usage: ###

Build the image
```shell
docker build -t debian-scala /stretch-slim/2.12/
```

### About this image: ###

- Currently supporting scala versions **2.11.11** and **2.12.4**
- Debian "slim" image variant
- Oracle JDK8 addded without MissionControl, VisualVM, JavaFX, ReadMe files, source archives, etc.
- Oracle Java Cryptography Extension added
- SHA 256 sum checks for all downloads
- JAVA\_HOME and SCALA\_HOME environment variables set up

### Dual licensed under: ###

* [MIT License]
* [Oracle Binary Code License Agreement]

   [jessie-slim-2.11/Dockerfile]: <https://github.com/MihaiBogdanEugen/docker-debian-scala/blob/master/jessie-slim/2.11/Dockerfile>
   [jessie-slim-2.12/Dockerfile]: <https://github.com/MihaiBogdanEugen/docker-debian-scala/blob/master/jessie-slim/2.12/Dockerfile>
   [stretch-slim-2.11/Dockerfile]: <https://github.com/MihaiBogdanEugen/docker-debian-scala/blob/master/stretch-slim/2.11/Dockerfile>
   [stretch-slim-2.12/Dockerfile]: <https://github.com/MihaiBogdanEugen/docker-debian-scala/blob/master/stretch-slim/2.12/Dockerfile>
   [MIT License]: <https://raw.githubusercontent.com/MihaiBogdanEugen/debian-scala/master/LICENSE>
   [Oracle Binary Code License Agreement]: <https://raw.githubusercontent.com/MihaiBogdanEugen/debian-scala/master/Oracle_Binary_Code_License_Agreement%20for%20the%20Java%20SE%20Platform_Products_and_JavaFX>