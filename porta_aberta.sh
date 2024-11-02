#!/bin/bash

portas=$(nft list chain filter debug_remoto | grep 'tcp dport' | grep accept | awk '{print $3}')
echo $(echo $portas | wc -w) $portas
