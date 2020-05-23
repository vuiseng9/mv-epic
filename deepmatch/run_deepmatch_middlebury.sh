#!/usr/bin/env bash

ROOTDIR="/hosthome/optical_flow/"
APP="./deepmatching-static"
DATASET=${ROOTDIR}/middlebury/public-color/twoframes/
GT=${ROOTDIR}/middlebury/public-color/twoframes-gt/
OUTDIR=./output_middlebury/

echo $APP

mkdir -p $OUTDIR

declare -a MIDDLEBURY=(Dimetrodon Grove2 Grove3 Hydrangea RubberWhale Urban2 Urban3 Venus)

for LABEL in ${MIDDLEBURY[@]}
do 
    echo "[Info] Running deepmatch on the pair of ${LABEL} ..."
    cmd="$APP ${DATASET}/${LABEL}/frame10.png ${DATASET}/${LABEL}/frame11.png -nt $(nproc) > ${OUTDIR}/${LABEL}.deepmatch.txt"

    ## pipe for visualization ## | python3 viz.py ${DATASET}/${LABEL}/frame10.png ${DATASET}/${LABEL}/frame11.png"

    echo "[Info] cmd => ${cmd}"
    eval $cmd

    printf "\n"
done




