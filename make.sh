#!/bin/bash
# File:    make.sh
# Date:    07.11.2017 08:36
# Author:  Marek Nožka, marek <@t> tlapicka <d.t> net
# Licence: GNU/GPL 
# Task:    .md => .ipynb
############################################################


for file in ./*.md; do
    nbfile=$(basename $file .md).ipynb
    notedown $file -o $nbfile
    sed -f ext.sed -E -i $nbfile
done
