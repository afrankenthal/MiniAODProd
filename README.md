# Running from Tarball in cmslpc via bunches

This is a small tool to privately generate RunIISummer16MiniAODv2 events from a standard CMS gridpack (i.e. the output has to be a cmsgrid_final.lhe file).

## Installation
1. Please fork the following package and branch in your dedicated area:
```bash
git clone -b cmslpc-80X git@github.com:SiewYan/running_from_tarball.git
```
2. Modify ```submit.py``` if you desire to store auxiliary files (log,out,err) elsewhere.
3. Specify your base directory [$TARBALL](https://github.com/SiewYan/running_from_tarball/blob/lpc-dev-eos/buildInputs.sh#L5)
4. Point to your output [location]() which is currently set to my EOS space in cmslpc.
5. Number of event per job can be adjusted [here]().

## Run

# Run on single gridpacks

1. Put your tarball/gridpack into the ```inputs/``` folder together with an appropriate hadronizer that has the same name.
2. Additionally, comment (line)[] and uncomment (line)[] to point to ```inputs/```.
3. Check again your parameters are correctly set, (here)[] (here)[] and (here)[].
4. Prepare and submit by running:
```bash
sh buildInputs.sh EWKZ2Jets_ZToLL_M-50_13TeV-madgraph-pythia8
python submit.py work_EWKZ2Jets_ZToLL_M-50_13TeV-madgraph-pythia8 $njobs
```

# Run on btach

1. Specify the (location)[] (absolute path) of your gridpacks.
2. Revert step specify in (2) in Run on single gridpacks to put to your pre-defined EOS space.
2. Adjust the number of (jobs)[] desire to produce, for example, if 100 events produced per job, 2500 jobs would have 250000 events.
3. Pre-define your grid password in auto to facilitate hassle-free passwordless job preparation. WARNING: please mask/remove your password once job setup is done to avoid exposure to unscrupulous individual.
4. Run the setup

```bash
./multibuild.sh
```

4. After the setup, please check the content of	```multisubmit.sh```. If its all good,	submit!!

```bash
./multisubmit.sh
```

5. Monitor!! with cmslpc landscape dashboard.
6. Bon Voyage.

