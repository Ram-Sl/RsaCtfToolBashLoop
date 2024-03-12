#!/bin/bash

#Getting values
valueN=973859
valueE=65537

encryptedMessage=(209835 725788 418892 418892 460537 560070 286424 847455 596835 880588)

#Run script
for i in ${!encryptedMessage[@]}; do
   python3 RsaCtfTool.py -n $valueN -e $valueE --decrypt ${encryptedMessage[$i]} --output Text.txt > /dev/null 2>&1
done
cat Text.txt
rm Text.txt
