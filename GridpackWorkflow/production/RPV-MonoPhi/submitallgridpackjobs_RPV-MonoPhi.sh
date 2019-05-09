#!/bin/sh
SCRIPT="../../test/scripts/submitGridpackCondorJob.py"
MODEL="RPV-MonoPhi_mUR-"
JOBS="/afs/cern.ch/work/d/dspitzba/SUSYsignalProduction/GenLHEfiles/GridpackWorkflow/production/RPV-MonoPhi/jobs/"
genprodir="/afs/cern.ch/work/d/dspitzba/SUSYsignalProduction/genproductions/"

for MPROD in {800..2200..50}; do
    python ${SCRIPT} ${MODEL}${MPROD} --cards-dir ${JOBS}/${MODEL}${MPROD} --genproductions-dir ${genprodir}
done
