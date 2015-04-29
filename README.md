# compass-r
Adds a compass arrow to image by extracting compass bearing from image EXIF data (if available).

![](https://raw.githubusercontent.com/cleveland-metroparks/compass-r/master/east_facing_photo.png)

To use install ```exif``` and imagemagick first, e.g.:

```sudo apt-get install -y exif imagemagick```

Then run in directory with images:

```
./arrow.sh
```

Requirements: Written for Ubuntu, but likely works on other Linux and Unix systems.
