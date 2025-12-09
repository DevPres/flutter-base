#!/bin/bash

flutter clean && flutter pub get && flutter build web --release && flutter run -d web-server --web-port=8080 --web-hostname=0.0.0.0
