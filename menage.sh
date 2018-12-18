echo "Nettoyage"

du -a bazar/

mkdir bazar_clean
mkdir bazar_clean/video
mkdir bazar_clean/images
mkdir bazar_clean/divers

find bazar/01/ -name "*.jpg" -exec cp {} bazar_clean/images \;
find bazar/01/ -name "*.mp4" -exec cp {} bazar_clean/video \;
find bazar/01/ -name "*.txt" -exec cp {} bazar_clean/divers \;

