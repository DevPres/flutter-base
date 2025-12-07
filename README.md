# hello_world

A new Flutter project.

## Let docker file work

Build the docker image inside this folder

> docker build --tag "flutter.android" .

flutter.android can be whatever you want.

Then run the image mounting the current folder (If you want build this project make sure that you are in this folder or change ./ whit the path to the folder project)

> docker run -it --rm -v ./:/app flutter.android:latest bash

inside the bash launch

> flutter clean && flutter pub get && flutter build apk --release
