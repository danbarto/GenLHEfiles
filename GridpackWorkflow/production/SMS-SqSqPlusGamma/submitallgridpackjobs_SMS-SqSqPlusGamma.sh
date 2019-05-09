#!/bin/sh
SCRIPT="../../test/scripts/submitGridpackCondorJob.py"
MODEL="SMS-SqSqPlusGamma_mSq-"
JOBS="/afs/cern.ch/work/d/dspitzba/SUSYsignalProduction/GenLHEfiles/GridpackWorkflow/production/SMS-SqSqPlusGamma/jobs"
genprodir="/afs/cern.ch/work/d/dspitzba/SUSYsignalProduction/genproductions/"

for MPROD in {200..1000..50}; do
    python ${SCRIPT} ${MODEL}${MPROD} --cards-dir ${JOBS}/${MODEL}${MPROD} --genproductions-dir ${genprodir}
done

