#!/bin/sh

SCRIPT="../../test/scripts/submitGridpackCondorJob.py"
MODEL="VBF-C1N2_mC1-"
JOBS="/afs/cern.ch/work/d/dspitzba/SUSYsignalProduction/GenLHEfiles/GridpackWorkflow/production/VBF_C1N2/jobs"
genprodir="/afs/cern.ch/work/d/dspitzba/SUSYsignalProduction/genproductions/"


for MNLSP in {100..1000..50}; do
    python ${SCRIPT} ${MODEL}${MNLSP} --cards-dir ${JOBS}/${MODEL}${MNLSP} --genproductions-dir ${genprodir} --longJob
done
