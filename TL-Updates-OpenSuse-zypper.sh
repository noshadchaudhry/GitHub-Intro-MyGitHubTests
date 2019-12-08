#/bin/bash
echo '###############################################################################################'
echo '                                            Source:'
echo '###############################################################################################'
echo '/usr/src/packages/'
echo '~/rpmbuild'
echo '/var/cache/zypper/source-download'


zypper search -t srcpackage
zypper source-download --status
echo 'zypper source-download --delete'




echo '###############################################################################################'
echo '                                            Patches:'
echo '###############################################################################################'
zypper patch-check
zypper list-patches --bugzilla
zypper list-patches --all --cve
zypper list-patches




echo '###############################################################################################'
echo '                                            Updates:'
echo '###############################################################################################'
echo 'SameVendor/Priority/Installable aka all dependencies satisfied'


zypper list-updates
sudo zypper list-updates --all

#########
PreUpdate
#########
# To verify whether all dependencies are still fulfilled and to repair missing dependencies, use:
sudo zypper verify
zypper list-updates




echo '###############################################################################################'
echo '                                            Installs:'
echo '###############################################################################################'

echo 'You can install anything u want now'

#########
PostInst
#########
sudo zypper install-new-recommends