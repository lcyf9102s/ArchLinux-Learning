#!/bin/bash
for i in $(ls *.tar.gz);
do tar -zxvf $i -C ~/g4_src/datasets;
done
