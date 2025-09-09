#!/bin/bash

mkdir -p files/images/jpeg
mkdir -p files/images/png
mkdir -p files/docs/txt

for file_name in files/*; do 
    if [ -f "$file_name" ]; then 
       rashirenie="${file_name##*.}"
       
       case $rashirenie in 
            jpeg)
            	mv "$file_name" "files/images/jpeg"
            	;;
	    png)
	        mv "$file_name" "files/images/png"
            	;;
            txt)
                mv "$file_name" "files/docs/txt"
            	;;
            	*)
            	echo "Neizvestnoe rashirenie : $file_name"
            	;;
        esac
    fi
done

echo "sort file!"

