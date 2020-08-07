## kdbq+ Slim Setup
***

32-bit kdbq setup on Ubuntu:Bionic 18.04 LTE

- Installs basic ubuntu system tools
- Also adds `q-mode` for `emacs`

Use the code below to build the dockerimage (make sure you are in the same folder while you run the build command)

`> docker build -t kdb-slim:1.0 .`

Use the code below to start the image into a `bash` terminal

`> docker run --rm -it kdb-slim /bin/bash`