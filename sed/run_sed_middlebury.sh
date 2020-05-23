#!/usr/bin/env bash

ROOTDIR="/hosthome/optical_flow/"
APP="./build/ocv-sed"
DATASET=${ROOTDIR}/middlebury/public-color/twoframes/
GT=${ROOTDIR}/middlebury/public-color/twoframes-gt/
OUTDIR=./output_middlebury/

echo $APP

mkdir -p $OUTDIR

declare -a MIDDLEBURY=(Dimetrodon Grove2 Grove3 Hydrangea RubberWhale Urban2 Urban3 Venus)

for LABEL in ${MIDDLEBURY[@]}
do 
    echo "[Info] Generating SED for ${LABEL} ..."
    cmd="$APP -i=${DATASET}/${LABEL}/frame10.png -m=./model.yml -o=${OUTDIR}/${LABEL}.sed.png"
    eval $cmd
done

## $APP -i=${DATASET}/Dimetrodon/frame10.png -m=./model.yml -o=${OUTDIR}/Dimetrodon.sed.png
## $APP -i=${DATASET}/Grove2/frame10.png -m=./model.yml -o=${OUTDIR}/Grove2.sed.png
## $APP -i=${DATASET}/Grove3/frame10.png -m=./model.yml -o=${OUTDIR}/Grove3.sed.png
## $APP -i=${DATASET}/Hydrangea/frame10.png -m=./model.yml -o=${OUTDIR}/Hydrangea.sed.png
## $APP -i=${DATASET}/RubberWhale/frame10.png -m=./model.yml -o=${OUTDIR}/RubberWhale.sed.png
## $APP -i=${DATASET}/Urban2/frame10.png -m=./model.yml -o=${OUTDIR}/Urban2.sed.png
## $APP -i=${DATASET}/Urban3/frame10.png -m=./model.yml -o=${OUTDIR}/Urban3.sed.png
## $APP -i=${DATASET}/Venus/frame10.png -m=./model.yml -o=${OUTDIR}/Venus.sed.png



