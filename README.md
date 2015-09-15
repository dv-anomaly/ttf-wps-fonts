# WPS Office Fonts

These are the symbol fonts required by wps-office. They are used to display math formulas. We have collected the fonts here to make things easier.

##Arch Linux Installation
You can use the [ttf-wps-fonts](https://aur.archlinux.org/packages/ttf-wps-fonts/)  package from the AUR.

## Manual Installation

For this tutorial we will use the `/tmp` directory to temporary save the files.

Change to the `/tmp` directory.
```
cd /tmp
```

Clone the Git repository.
```
git clone https://github.com/wayne-hartmann/ttf-wps-fonts.git
```

Create a sub directory in your system's fonts directory. This is usually `/usr/share/fonts`, otherwise consult your distribution's documentation.
```
sudo mkdir /usr/share/fonts/wps-fonts
```

Move fonts to the new directory.
```
sudo mv ttf-wps-fonts/* /usr/share/fonts/wps-fonts
```

Fix the file permissions.
```
sudo chmod 644 /usr/share/fonts/wps-fonts/*
```
Rebuild the font cache.
```
sudo fc-cache -vfs
```

Clean up the `tmp` directory.
```
rm -rf /tmp/ttf-wps-fonts
```





