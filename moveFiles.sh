#! /bin/bash

mchi=5p25
dmchi=0p5
basedir="2018/GenFilter"

eos root://cmseos.fnal.gov mkdir /store/user/as2872/iDM/AOD_Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-1
eos root://cmseos.fnal.gov mkdir /store/user/as2872/iDM/AOD_Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-10
eos root://cmseos.fnal.gov mkdir /store/user/as2872/iDM/AOD_Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-100
eos root://cmseos.fnal.gov mkdir /store/user/as2872/iDM/AOD_Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-1000

for file in `eos root://cmseos.fnal.gov ls /store/user/as2872/iDM/Samples`; do

    echo "Moving file $file ..."

    if [[ $file == *"ctau-1."* ]]; then
        eos root://cmseos.fnal.gov mv /store/user/as2872/iDM/Samples/$file /store/user/as2872/iDM/AOD_Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-1/$file
    elif [[ $file == *"ctau-10."* ]]; then
        eos root://cmseos.fnal.gov mv /store/user/as2872/iDM/Samples/$file /store/user/as2872/iDM/AOD_Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-10/$file
    elif [[ $file == *"ctau-100."* ]]; then
        eos root://cmseos.fnal.gov mv /store/user/as2872/iDM/Samples/$file /store/user/as2872/iDM/AOD_Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-100/$file
    elif [[ $file == *"ctau-1000."* ]]; then
        eos root://cmseos.fnal.gov mv /store/user/as2872/iDM/Samples/$file /store/user/as2872/iDM/AOD_Samples/$basedir/Mchi-${mchi}_dMchi-${dmchi}_ctau-1000/$file
    fi

done
