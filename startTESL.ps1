# Has to be authorized using:
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
$REPO="fredblgr/"
$IMAGE="ubuntunovnc-tesl"
$TAG="2020"
docker run --rm -d -p 6080:80 -v "$(PWD):/workspace:rw" -e USER=student -e RESOLUTION=1680x1050 --name ${IMAGE}-run ${REPO}${IMAGE}:${TAG}
Start-Sleep -s 5
Start http://localhost:6080
