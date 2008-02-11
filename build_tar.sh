#!/bin/sh
if [ -z "$1" ]; then
  echo "ERROR: need to specify version"
  exit
fi

mkdir facebox
cp {b,bl,br,tl,tr}.png facebox
cp {loading,closelabel}.gif facebox
cp facebox.{js,css} facebox
cp README.txt facebox
tar -cf facebox-$1.tar facebox/
gzip -9 facebox-$1.tar
rm -rf facebox
mv facebox-$1.tar.gz releases
