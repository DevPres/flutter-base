# hello_world

A new Flutter project.

## Let docker file work

Build the docker image inside this folder

> docker build -f Dockerfile.android --tag "flutter.android" .

for the android image

> docker build -f Dockerfile.web --tag "flutter.web" .

flutter.\* can be whatever you want. Don´t forget the dot!!


## Build for android

Run the image mounting the current folder (If you want build this project make sure that you are in this folder or change ./ whit the path to the folder project)

> docker run -it --rm -v ./:/app flutter.android:latest bash

inside the bash launch

> flutter clean && flutter pub get && flutter build apk --release

## Build for web

for a fast startup, after build the image you can use the script inside the project

> ./run_web_container.sh
> ./build_web.sh

Or you can do manual

Run the image mounting the current folder (If you want build this project make sure that you are in this folder or change ./ whit the path to the folder project)

> docker run -it --rm -v ./:/app flutter.web:latest bash

inside the bash launch

> flutter clean && flutter pub get && flutter build web --release

the build will be in the folder

> /build/web

You can use nginx to load on localhost 8080

> docker run -it --rm -v $(pwd)/build/web:/usr/share/nginx/html -p 8080:80 nginx:alpine

or you can run the container with:

> docker run -p 8080:8080 -it --rm -v ./:/app flutter.web:latest bash 

then you can use flutter run headless

> flutter run -d web-server --web-port=8080 --web-hostname=0.0.0.0

and you can see the result on localhost:8080


## Mentions

Thanks to https://github.com/iarunsaragadam/flutter-docker for the idea
