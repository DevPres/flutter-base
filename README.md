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

Run the image mounting the current folder (If you want build this project make sure that you are in this folder or change ./ whit the path to the folder project)

> docker run -it --rm -v ./:/app flutter.android:latest bash

inside the bash launch

> flutter clean && flutter pub get && flutter build web --release

the build will be in the folder

> /build/web

## Mentions

Thanks to https://github.com/iarunsaragadam/flutter-docker for the idea
