# Ubuntu 21.04 : Join an AD realm

This is a simple script to Automate the required commands for an Ubuntu 21 04 machine to join an AD realm.
Assumptions:
- Ubuntu Machine can reach the AD server via the network
- Administrator rights are required

Steps to use it:
1. GIT Clone repository into target endpoint:
   $ sudo apt-get install git
   $ git clone https://github.com/amcamillo/ubuntu21.04-joinadrealm/
   
2. Make Script Executable
   $ sudo chmod +x ./joinad_ubuntu21.sh
   
3. Execute script and Follow instructions
   $ sudo ./joinad_ubuntu21.sh
      
