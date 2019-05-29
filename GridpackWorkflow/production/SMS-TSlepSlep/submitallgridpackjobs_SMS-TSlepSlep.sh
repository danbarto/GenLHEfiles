#!/bin/sh
source setup.sh
SCRIPT="../../test/scripts/submitGridpackCondorJob.py"
MODEL="SMS-TSlepSlep_mSlep-"
JOBS="/afs/cern.ch/work/d/dspitzba/SUSYsignalProduction/GenLHEfiles/GridpackWorkflow/production/SMS-TSlepSlep/jobs"
genprodir="/afs/cern.ch/work/d/dspitzba/SUSYsignalProduction/genproductions/"


for MNLSP in {75..1500..25}; do
    python ${SCRIPT} ${MODEL}${MNLSP} --cards-dir ${JOBS}/${MODEL}${MNLSP} --genproductions-dir ${genprodir}
done
