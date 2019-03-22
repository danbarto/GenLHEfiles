#!/bin/sh
JOBS="jobs"
TEMP="templatecards"
PROC="RPV-MonoPhi"
PART="_mUR-"

### Create cards and SLHAs for all mass points

for MPROD in 1250; do
    MODEL=${PROC}${PART}${MPROD}
    mkdir -p "${JOBS}/${MODEL}"
    cp ${TEMP}/${PROC}_run_card.dat "${JOBS}/${MODEL}/${MODEL}_run_card.dat"
    cp ${TEMP}/${PROC}_extramodels.dat "${JOBS}/${MODEL}/${MODEL}_extramodels.dat"
    sed "s/%MPROD%/${MPROD}/g" ${TEMP}/${PROC}_proc_card.dat > "${JOBS}/${MODEL}/${MODEL}_proc_card.dat"
    sed "s/%MPROD%/${MPROD}/g" ${TEMP}/${PROC}_param_card.dat > "${JOBS}/${MODEL}/${MODEL}_param_card.dat"
    #sed "s/%MPROD%/${MPROD}/g" ${TEMP}/${PROC}_customizecards.dat > "${JOBS}/${MODEL}/${MODEL}_customizecards.dat"
    #sed "s/%MPROD%/${MPROD}/g" ${TEMP}/${PROC}.slha > ${JOBS}/${MODEL}/${MODEL}.slha
done
