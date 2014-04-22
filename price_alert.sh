#!/bin/sh

price=$(./price.sh | grep faresort | cut -d ">" -f 2 | cut -d "." -f 1 | sort -g | head -1); 

if [ $price -ne 3124 ]; then 
   echo "new price: $price" | mail -s "New Price" "feroult@gmail.com"
   echo "new price: $price"; 
else 
   printf "$price."
fi
