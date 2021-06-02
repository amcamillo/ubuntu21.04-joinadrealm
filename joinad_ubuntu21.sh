echo "Starting Script"
echo "1. Installing required packages"
sudo apt -y install realmd sssd sssd-tools libnss-sss libpam-sss adcli samba-common-bin oddjob oddjob-mkhomedir packagekit

echo ""
echo "2. Joining AD domain"
echo "Please enter the domain you wish to join:"
read -r DOMAIN
lastverify=$( realm discover "$DOMAIN" | grep -m 1 "$DOMAIN" )
echo ""
echo "joined to $lastverify"
echo ""

sudo realm join $DOMAIN

echo ""
echo "3. Verifying it's Possible to Authenticate with the Domain"
echo "Please enter domainusername@domain that you wish to test"
read -r USER
id $USER

echo ""
echo "4. Creating User environment"
echo "session required pam_mkhomedir.so skel=/etc/skel/ umask=0022" | sudo tee -a /etc/pam.d/common-session

echo ""
echo "5. It's all done, sign out and try to login to make sure it works."
exit
