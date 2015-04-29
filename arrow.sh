#!/bin/bash

for image in `ls *.JPG`
do
	# trim off leading and trailing spaces in image variable
	image=`echo $image | xargs`
	# get non-extension portion of name
	name=`echo $image | awk -F'.' '{print $1}'` 	
	# extract angle from EXIF, and turn into variable
	angle=`exif $image | grep 'Image Direction' | awk 'BEGIN { FS = "|" } ; { print $2 }' | sed 's/M//g' | xargs`
	
	# create rotated and scaled arrow for image
	convert -rotate $angle -transparent white -resize 300x300 arrow-hi.png arrow-hi_$angle.png
	# overlay that arrow on original image
	composite arrow-hi_$angle.png $image $name.png
	# perform a wee bit of cleanup
	rm arrow-hi_$angle.png
done
