## Description

This is a Docker image for disconnected [flutter](https://flutter.dev) [web](https://flutter.dev/web) development.

## Download

You can either pull it from [Docker Hub](https://hub.docker.com/r/jgiannuzzi/flutter-web) or download from the [releases page](https://github.com/jgiannuzzi/flutter-web-docker/releases) if you are in a proxied environment.

#### Docker Hub

```
docker pull jgiannuzzi/flutter-web:1.25.0-8.3.pre
```

#### Releases

Once downloaded from the [releases page](https://github.com/jgiannuzzi/flutter-web-docker/releases), import the image into Docker:

```
docker image load -i flutter-web-docker.tar
```

## Usage

Run the container in the current working directory, exposing port 8080:

```
docker run --rm -ti -v $PWD:/data -w /data -p 8080:8080 jgiannuzzi/flutter-web:1.25.0-8.3.pre
```

Create a new web project in offline mode:

```
flutter create --offline --platforms web myapp
```

Run it:

```
cd myapp
flutter run -d web-server --web-port 8080
```
