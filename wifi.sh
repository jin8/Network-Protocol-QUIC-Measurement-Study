#!/bin/bash

mkdir wifi
cp scripts/plots.R wifi

for j in quic h2 h1
do
	python main.py $j wifi 100
done

Rscript plots.R wifi plt_box
Rscript plots.R wifi dom_box
Rscript plots.R wifi plt_cum
Rscript plots.R wifi dom_box