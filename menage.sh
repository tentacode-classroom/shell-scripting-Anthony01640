echo "Nettoyage"

du -a bazar/
rm -rf bazar_clean
mkdir bazar_clean
mkdir bazar_clean/video
mkdir bazar_clean/images
mkdir bazar_clean/divers

FILES=`find bazar/ -type f `

for FILE in $FILES
do 

	file $FILE | grep 'image data' > /dev/null
	IS_IMAGE=$?

	file $FILE | grep 'ISO media' > /dev/null
	IS_VIDEO=$?

	if [ $IS_IMAGE == 0 ]
	then
		cp $FILE bazar_clean/images
	elif [ $IS_VIDEO == 0  ]
	then
		cp $FILE bazar_clean/video
	else
		cp $FILE bazar_clean/divers
	fi
done
