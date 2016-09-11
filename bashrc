shopt -s expand_aliases
alias setupATLAS='source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh'
# remove the host key for recast-demo from the known host file
#if [ -e ~/.ssh/known_hosts ];then
#	ssh-keygen -R svn.cern.ch
#fi
# add a fresh host key
#ssh-keyscan -t rsa svn.cern.ch >> ~/.ssh/known_hosts

setupATLAS --quiet
echo ":::set up ATLAS done:::"
