#!/usr/bin/env bash

ROOTDIR="/hosthome/optical_flow/"
APP="./build/epicflow"
DATASET=${ROOTDIR}/middlebury/public-color/twoframes/
GT=${ROOTDIR}/middlebury/public-color/twoframes-gt/
OUTDIR=./output_middlebury/

echo $APP

mkdir -p $OUTDIR

declare -a MIDDLEBURY=(Dimetrodon Grove2 Grove3 Hydrangea RubberWhale Urban2 Urban3 Venus)

for LABEL in ${MIDDLEBURY[@]}
do 
    echo "[Info] Running deepmatch on the pair of ${LABEL} ..."
    cmd="$APP ${DATASET}/${LABEL}/frame10.png ${DATASET}/${LABEL}/frame11.png ../sed/output_middlebury/${LABEL}.sed.bin ../deepmatch/output_middlebury/${LABEL}.deepmatch.txt ${OUTDIR}/${LABEL}.epicflow.flo"

    echo "[Info] cmd => ${cmd}"
    eval $cmd

    printf "\n"
done




