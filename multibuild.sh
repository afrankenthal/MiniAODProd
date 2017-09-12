#!/bin/bash                                                                                        

set -e
                                                                                                                                                                                    
eos="/store/user/shoh/gridpacks/DiZprime/v1/Vector"

njob="2500"

#if [ -e multisubmit.sh ];then
#rm multisubmit.sh
#fi
echo "=========================="
echo "Which set of mass point ? "
echo "=========================="
echo "  Available mass points    "
echo "                           "
echo " 1  --> mchi = 1   GeV     "
echo " 2  --> mchi = 10  GeV     "
echo " 3  --> mchi = 50  GeV     "
echo " 4  --> mchi = 100 GeV     "
echo " 5  --> mchi = 150 GeV     "
echo " 6  --> mchi = 200 GeV     "
echo " 7  --> mchi = 300 GeV     "
echo " 8  --> mchi = 400 GeV     "
echo " 9  --> mchi = 500 GeV     "
echo " 10 --> mchi = 600 GeV     "
echo " 11 --> mchi = 700 GeV     "
echo "==========================="
read chi
if [[ $1 -gt "0" || $1 -lt "12" ]];then
    echo "Read in value = ${chi}"
else 
    echo "Error, try again"
    exit 0
fi  

if [[ $chi -eq "1" ]];then
dir=`(ls /eos/uscms${eos} | grep "_Mchi-1_")`
elif [[ $chi -eq "2" ]];then
dir=`(ls /eos/uscms${eos} | grep "_Mchi-10_")`
elif [[ $chi -eq "3" ]];then
dir=`(ls /eos/uscms${eos} | grep "_Mchi-50_")`
elif [[ $chi -eq "4" ]];then
dir=`(ls /eos/uscms${eos} | grep "_Mchi-100_")`
elif [[ $chi -eq "5" ]];then
dir=`(ls /eos/uscms${eos} | grep "_Mchi-150_")`
elif [[ $chi -eq "6" ]];then
dir=`(ls /eos/uscms${eos} | grep "_Mchi-200_")`
elif [[ $chi -eq "7" ]];then
dir=`(ls /eos/uscms${eos} | grep "_Mchi-300_")`
elif [[ $chi -eq "8" ]];then
dir=`(ls /eos/uscms${eos} | grep "_Mchi-400_")`
elif [[ $chi -eq "9" ]];then
dir=`(ls /eos/uscms${eos} | grep "_Mchi-500_")`
elif [[ $chi -eq "10" ]];then
dir=`(ls /eos/uscms${eos} | grep "_Mchi-600_")`
elif [[ $chi -eq "11" ]];then
dir=`(ls /eos/uscms${eos} | grep "_Mchi-700_")`
fi

echo "#!/bin/bash" > multisubmit.sh

for file in $dir
do
echo "$file"
xrdcp root://cmseos.fnal.gov//${eos}/${file} inputs/

fbname=$(basename ${file} _tarball.tar.xz)

scp inputs/tmp_hadronizer.py inputs/${fbname}_hadronizer.py
echo "./auto ${fbname}"
./auto ${fbname}
echo "python submit.py work_${fbname} ${njob}" >> multisubmit.sh

rm inputs/${fbname}_hadronizer.py
rm inputs/${file}

done
chmod +x multisubmit.sh
echo "multisubmit is prepared"
