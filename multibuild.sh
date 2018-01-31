#!/bin/bash                                                                                        

set -e

#GRIDPACK DIR, FULL PATH                                                                                                                                                                                                                      dir="/eos/uscms/store/user/shoh/gridpacks/DarkHiggs/BBbarDM"
export eos_input=`(echo $dir | awk -F "uscms" '{print $2}')`
files=`ls $dir`
                        
#number of job
njob="2500"

echo "#!/bin/bash" > multisubmit.sh

for file in $files
do
echo "$file"
xrdcp root://cmseos.fnal.gov//${eos_input}/${file} inputs/

fbname=$(basename ${file} _tarball.tar.xz)

scp inputs/tmp_hadronizer.py inputs/${fbname}_hadronizer.py
echo "./auto ${fbname}"
./auto ${fbname}
echo "python submit.py work_${fbname} ${njob}" >> multisubmit.sh

rm inputs/${fbname}_hadronizer.py
rm inputs/${file}

done
chmod +x multisubmit.sh
echo "multisubmit is prepared, please check the content before launching"
