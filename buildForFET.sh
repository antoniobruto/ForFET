#rm forFET_log.txt #> /dev/null 2>&1
#rm forFET_errLog.txt # > /dev/null 2>&1
#rm -r -f forFET/work #> $HOME/forFET_log.txt 2>&1
#mkdir forFET/work #> $HOME/forFET_log.txt 2>&1
#mkdir forFET/models #> $HOME/forFET_log.txt 2>&1
cd forFET
if ./build.sh ; then #> forFET_errLog.txt 2>&1 ; then # ; then
	printf "\nRun the Formal Feature Evaluation Tool using the Binary 'ForFET'\n"
	printf "Provide a configuration file specifying the paths for the following:\n1. Model Library\n2. Working Path (for intermediate analysis files)\n3. SpaceEx Binary\n4. dReach Binary\n"
else 
	printf "\nAn error occurred while building ForFET, please read the logs in forFET_errLog.txt.\n"
fi
