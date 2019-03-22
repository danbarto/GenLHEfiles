#!/bin/sh
SCRIPT="../../test/scripts/submitGridpackCondorJob.py"
MODEL="RPV-MonoPhi_mUR-"
JOBS="/afs/cern.ch/work/d/dspitzba/SUSYsignalProduction/GenLHEfiles/GridpackWorkflow/production/RPV-MonoPhi/jobs/"
genprodir="/afs/cern.ch/work/d/dspitzba/SUSYsignalProduction/genproductions/"

for MPROD in 1250; do
    python ${SCRIPT} ${MODEL}${MPROD} --cards-dir ${JOBS}/${MODEL}${MPROD} --genproductions-dir ${genprodir}
done
