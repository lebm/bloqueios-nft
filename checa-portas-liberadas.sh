#!/usr/bin/bash

num=$(sudo nft list set ip filter portas_liberadas | grep -c elements)
if [[ $num > 0 ]]; then 
    portas=$(sudo nft list set ip filter portas_liberadas | grep elements | sed -e 's/elements = {//' -e 's/}//' -e 's/,//g')
fi
echo $num $portas
