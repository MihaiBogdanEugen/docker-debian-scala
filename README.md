## Debian Docker image with Oracle JDK and Scala

### Supported tags and respective Dockerfile links:

* ```jesse-slim-8u144-2.11.11``` _\([jesse-slim-8u144-2.11.11/Dockerfile]\)_
* ```stretch-slim-8u144-2.11.11``` _\([stretch-slim-8u144-2.11.11/Dockerfile]\)_
* ```jesse-slim-8u144-2.12.3``` _\([jesse-slim-8u144-2.12.3/Dockerfile]\)_
* ```stretch-slim-8u144-2.12.3```, ```latest``` _\([stretch-slim-8u144-2.12.3/Dockerfile]\)_

#### All tag names follow the naming convention:

```debian_image_tag``` + '-' + ```java_version``` + '-' + ```scala_version```

### Usage:

Build the image
```shell
docker build -t mbe1224/debian-scala .
```

### About this image:

- Debian "slim" image variant
- Oracle Java SE Development Kit (JDK) addded, without MissionControl, VisualVM, JavaFX and JRE
- Oracle Java Cryptography Extension added
- SHA 256 sum checks for all downloads
- JAVA\_HOME and SCALA\_HOME environment variables set up

### License:

* [MIT License]
* [Oracle Binary Code License Agreement]

   [jesse-slim-8u144-2.11.11/Dockerfile]: <https://github.com/MihaiBogdanEugen/debian-scala/blob/jesse-slim-8u144-2.11.11/Dockerfile>
   [stretch-slim-8u144-2.11.11/Dockerfile]: <https://github.com/MihaiBogdanEugen/debian-scala/blob/stretch-slim-8u144-2.11.11/Dockerfile>
   [jesse-slim-8u144-2.12.3/Dockerfile]: <https://github.com/MihaiBogdanEugen/debian-scala/blob/jesse-slim-8u144-2.12.3/Dockerfile>
   [stretch-slim-8u144-2.12.3/Dockerfile]: <https://github.com/MihaiBogdanEugen/debian-scala/blob/stretch-slim-8u144-2.12.3/Dockerfile>
   [MIT License]: <https://raw.githubusercontent.com/MihaiBogdanEugen/debian-scala/master/LICENSE>
   [Oracle Binary Code License Agreement]: <https://raw.githubusercontent.com/MihaiBogdanEugen/debian-scala/master/Oracle_Binary_Code_License_Agreement%20for%20the%20Java%20SE%20Platform_Products_and_JavaFX>