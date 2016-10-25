# 42_SA_vogsphere_access
##Setup Kerberos &amp; Git access to 42 SA

To setup access to your git repos on vogsphere, (only works on Linux / OSX)

####Clone this repo

####Run the shell script 
	
	sudo sh run.sh

(Enter system password if you need sudo previleges)

####Get your kerberos ticket

	kinit xloginx

(xloginx represents your login id)

####Enter your 42 password when asked to successfull authenticate.

####Clone/Push/Pull from all the Vogsphere Git repos you have access to. 

####To close your connection :

    kdestroy

##Welcome to the freedom to work anywhere in 42's school, outside of clusters
