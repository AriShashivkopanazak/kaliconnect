#include <string>
#include <stdlib.h>
#include <fstream>

int command(const char* command)
{
	int log = system(command);
	return 0;
}

int main()
{
	//lists all interfaces
	command("ip a");
	
	//what interface?
	command("echo \"what wirless interface do you want to use?\"");
	command("echo \"eg: wlan0\"");
	command("read -p \"interface: \" interface");
	command("ip link set $interface up");

	//what network?
	command("iwlist $interface scan | grep ESSID");
	command("echo \"what network do you want to connect to? (case sensitive)\"");
	command("read -p \"network: \" network");
	command("echo put your password below");
	command("wpa_passphrase \"$network\" >> /etc/wpa_supplicant.conf");
	
	//connects to ap
	command("wpa_supplicant -B -i $interface -c /etc/wpa_supplicant");
	command("sleep 10");
	command("dhclient $interface");
	
	//eye-candy
	command("clear");


	/*
	this is what I want it to do

	while (file_has_lines)
	{
		command(line);
	}

	*/


	return 0;
}
