Cache-Instance-Vars
===================

This script will create a set of environment variables for every Cache instance installed on the system. The variables are:

	{instance-name}SS = SuperServer Port
	{instance-name}WEB = WebServer Port
	{instance-name}CPF = CPF file
	{instance-name}MGR = Mgr Directory
	{instance-name}BIN = Bin directory
	{instance-name}CC =  cconsole.log file
	{instance-name}DIR = installation directory

To execute the script, source the file (simply executing it will not work):

	. ./cache-instance-vars.sh

