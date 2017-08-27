# Running from Tarball in cmslpc via bunches

This is a small tool to privately generate RunIISummer16MiniAODv2 events from a standard CMS gridpack (i.e. the output has to be a cmsgrid_final.lhe file).

## Installation
1. Put all your tarball/gridpack into your personal EOS space and rename your perferred hadronizer as tmp_hadronizer.py in `inputs/` folder
2. Modify `submit.py`, determining where you want to store logs etc.
3. Please specify your base directory and EOS directory in buildInputs.sh: https://github.com/SiewYan/running_from_tarball/blob/lpc-dev-eos/buildInputs.sh#L5-L6
4. For grid passwordless creation of multiple working folders for job submission, you need to specify your GRID password here: https://github.com/SiewYan/running_from_tarball/blob/lpc-dev-eos/auto#L3 
5. Adjust the desired number of events per job here: https://github.com/SiewYan/running_from_tarball/blob/lpc-dev-eos/submit/runEventGeneration.sh#L17
6. Modify your output location and site identifier, which is currently set to my EOS space in cmslpc : https://github.com/SiewYan/running_from_tarball/blob/lpc-dev-eos/submit/runEventGeneration.sh#L140
7. Modify EOS path and number of job in multibuild.sh : https://github.com/SiewYan/running_from_tarball/blob/lpc-dev-eos/multibuild.sh#L3-L5
8. You are set!

## Run

```bash
./multibuild.sh
./multisubmit.sh
```
NOTE: You may need to submit jobs per bunches.

