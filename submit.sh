#!/bin/bash

voms-proxy-init -voms cms -valid 192:00

#./submit.py SIDMmumu_Mps-200_MZp-1p2_ctau-0p012.tar.xz    10
#./submit.py SIDMmumu_Mps-200_MZp-1p2_ctau-0p12.tar.xz     10
#./submit.py SIDMmumu_Mps-200_MZp-1p2_ctau-0p6.tar.xz      10
#./submit.py SIDMmumu_Mps-200_MZp-1p2_ctau-1p2.tar.xz      10
#./submit.py SIDMmumu_Mps-200_MZp-1p2_ctau-1p20e-03.tar.xz 10
#./submit.py SIDMmumu_Mps-200_MZp-1p2_ctau-3p6.tar.xz      10

./submit.py SIDM-SIDMmumu_Mps-202_MZp-1p2_ctau-0p01.lhe.gz 1
