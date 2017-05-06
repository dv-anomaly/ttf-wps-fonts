if [[ $(id -u) -ne 0 ]] ;
  then echo "This script requires sudo privileges" ;
  exit 1 ;
else
  echo "Creating fonts folder..." &&
  mkdir /usr/share/fonts/wps-fonts &&
  echo "Moving files to the fonts folder..." &&
  cp ./*.ttf /usr/share/fonts/wps-fonts &&
  cp ./*.TTF /usr/share/fonts/wps-fonts &&
  echo "Fixing permissions..." &&
  chmod 644 /usr/share/fonts/wps-fonts/* &&
  echo "Rebuilding fonts cache..." &&
  fc-cache -vfs &&
  echo "Successfully installed fonts!"
fi
