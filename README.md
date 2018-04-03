# MiniAODProd

This is a small tool to privately generate **2017MC re-miniAOD (94X version 2) events with PU mixing** from a standard CMS gridpack (i.e. the output has to be a `cmsgrid_final.lhe` file). Working on LPC condor.

*NOTE: still evolving.*

* 2017 MiniAOD documentation (under construction): https://twiki.cern.ch/twiki/bin/view/CMSPublic/WorkBookMiniAOD2017
* Comprehensive list of MiniAOD: https://twiki.cern.ch/twiki/bin/view/CMSPublic/WorkBookMiniAOD

## Installation

1. Put your tarball/gridpack into the `inputs/` folder together with an appropriate hadronizer that has the same name.
2. Number of events per job is defined as `nevet` in `./inputs/runEventGeneration.sh`. Change it by your wish.
    ```bash
    17 export nevent="500" 
    ```
3. In the end, condor will copy the MiniAOD output to a remote site. Currently it's set to a user's LPC EOS space, in `./inputs/runEventGeneration.sh`. Change it by your wish.
    ```bash
    161 # define base output location
    162 REMOTE_USER_DIR="/store/user/${USER}/miniaod/$PROCESS"
    163
    164
    165 ls -lrht
    166
    167 xrdcp file:///$PWD/${outfilename}_miniaod.root root://cmseos.fnal.gov/${REMOTE_USER_DIR}/${outfilename}_miniaod.root
    ```

## Run

```bash
sh buildInputs.sh EWKZ2Jets_ZToLL_M-50_13TeV-madgraph-pythia8
python submit.py work_EWKZ2Jets_ZToLL_M-50_13TeV-madgraph-pythia8 $njobs
```

