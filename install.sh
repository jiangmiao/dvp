#!/bin/sh

dirs="/usr/share/keymaps/i386/dvorak /usr/share/kbd/keymaps/i386/dvorak"
for dir in $dirs
do
  echo "Check $dir."
  if [ -d "$dir" ] ; then
    dest=$dir
    break
  fi
done

if [ ! -d "$dest" ] ; then
  echo "Searching..."
  dest=`find /usr/share/ -type d|grep 'keymaps/i386/dvorak'|head -n1`
fi

if [ ! -d "$dest" ] ; then
  echo "Cannot find keymaps directory"
  exit 1
fi

command="cp dvp.map dvpx.map $dest"
echo $command
$command
if [ $? -ne 0 ]; then
  echo "Failed."
  exit 2
else
  echo "Succeeded."
fi
