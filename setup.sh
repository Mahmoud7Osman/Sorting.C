printf "Sorting.C - Setup Script\n"
sleep 0.3
printf "The Setup Script is Going To Make These Changes To Your System: \n\n"
sleep 0.3
printf "    Step 1: Install Cleny (A Coding Language Used To Create Beautiful User Interfaces For The Linux Terminal)\n"
sleep 0.3
printf "    Step 2: Install Sorting.C\n\n"
sleep 0.3
printf "Press ENTER To Proceed, Or CTRL-C To Cancel\n"
read
printf "\n"
printf "[i] Installing Cleny (Step 1) (Requires Sudo Privileges)\n"
sleep 0.3
sudo bash Cleny/install.sh
if [ $? == 1 ];then
	printf "[!] Something Went Wrong, Read The Error And Try To Fix The Problem\n"
fi
printf "[+] Cleny Installed Successfully\n"
sleep 0.3
printf "[i] Installing Sorting.C (Step 2)\n"
cp csr/sortc.sh .
sleep 0.3
mkdir setupscript
mv $0 setupscript
printf "[i] Sorting.C Setup Successfully Finished\n"
