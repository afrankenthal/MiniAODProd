#!/bin/bash

voms-proxy-init -voms cms -valid 192:00

# Usage: ./submit.py <LHE/gridpack filename> year [njobs]

#./submit.py SIDMmumu_Mps-200_MZp-1p2_ctau-0p012.tar.xz    10
#./submit.py SIDMmumu_Mps-200_MZp-1p2_ctau-0p12.tar.xz     10
#./submit.py SIDMmumu_Mps-200_MZp-1p2_ctau-0p6.tar.xz      10
#./submit.py SIDMmumu_Mps-200_MZp-1p2_ctau-1p2.tar.xz      10
#./submit.py SIDMmumu_Mps-200_MZp-1p2_ctau-1p20e-03.tar.xz 10
#./submit.py SIDMmumu_Mps-200_MZp-1p2_ctau-3p6.tar.xz      10

#./submit.py SIDM-SIDMmumu_Mps-202_MZp-1p2_ctau-0p01.lhe.gz 1
#./submit.py iDM_Mchi-6p0_dMchi-2p0_mZDinput-15p0_ctau-10p0.tar.xz 100
#./submit.py iDM_Mchi-5p25_dMchi-0p5_mZDinput-15p0_ctau-1p0.tar.xz 400 

#./submit.py iDM_template_test_ctau-0.tar.xz 400
#./submit.py iDM_Mchi-6p0_dMchi-2p0_mZDinput-15p0_ctau-0.tar.xz 999
#./submit.py iDM_Mchi-52p5_dMchi-5p0_mZDinput-150_ctau-0.tar.xz 999
./submit.py iDM_Mchi-5p25_dMchi-0p5_mZDinput-15p0_ctau-0.tar.xz 2017 1
#./submit.py iDM_Mchi-60_dMchi-20_mZDinput-150_ctau-0.tar.xz 999
