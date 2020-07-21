# Docker-TESL
This docker image has Eclipse Java 2020-06 installed, with the [TESL](https://wdi.centralesupelec.fr/software/TESL/) feature.

Available on [Docker hub](https://hub.docker.com/r/fredblgr/ubuntunovnc-tesl)

The source files are available on [GitHub](https://github.com/Frederic-Boulanger-UPS/Docker-TESL). The missing eclipse modeling archive (too big for GitHub) is the resources directory is replaced by a file containing an URL from which it can be downloaded.

It is based on my [Ubuntu in a web browser](https://github.com/Frederic-Boulanger-UPS/docker-ubuntu-novnc) docker image.

The simplest way to use it is to get the script at https://github.com/Frederic-Boulanger-UPS/Docker-TESL, then run ```./startTESL.sh```(or ```startTESL.ps1``` in the PowerShell of Windows).

Typical usage is:
```
docker run --rm -d -p 6080:80 -v ${PWD}:/workspace:rw -e USER=tesl -e RESOLUTION=1680x1050 fredblgr/ubuntunovnc-tesl:2020
```

then point your browser at http://localhost:6080, launch Eclipse, create a project, create a .tesl file in the project, and enjoy.

The current working directory is mounted on /workspace in the container, and the default is to create the Eclipse workspace inside /workspace, so your work will still be available in the working directory when you stop the container (which will be deleted because of the --rm option).