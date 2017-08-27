#!/bin/bash                                                                                        

set -e
                                                                                                                                                                                    
eos="/store/user/shoh/gridpacks/DiZprime/Vector"

njob="2500"

if [ -e multisubmit.sh ];then
rm multisubmit.sh
fi

echo "#!/bin/bash" > multisubmit.sh

for file in `(ls /eos/uscms${eos})`
do
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
