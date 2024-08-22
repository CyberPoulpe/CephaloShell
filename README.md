# Network and System Management Script

## Overview

This script provides a menu-driven interface to perform various network and system management tasks. It is written in PowerShell and offers functionalities such as SSH connections, IP configuration display, network diagnostics, Active Directory management, WSUS reset, and more.

## How to Use

1. **Launch the Script**: Run the script in a PowerShell environment.
2. **Menu Navigation**: 
   - You will be presented with a main menu.
   - Enter the number corresponding to the task you wish to perform.
   - Follow the on-screen prompts to complete your task.
3. **Quit**: To exit the script, enter `q` at any menu prompt.

## Main Menu Options

1. **SSH Connection**: 
   - Allows you to remotely execute commands on another machine via SSH.
   - You will be prompted to enter the target machine's name and the command to execute.

2. **Display IP Configuration**: 
   - Shows the complete IP configuration of the current machine using the `ipconfig /all` command.

3. **Ping**: 
   - Tests connectivity to a specified IP address or hostname.

4. **NSLookup**: 
   - Queries DNS information for a specified IP address or hostname.

5. **GPUpdate /force**: 
   - Forces a Group Policy update on a specified remote machine.

6. **Tracert**: 
   - Traces the route taken to reach a specified IP address.

7. **Network Scan**: 
   - Scans a specified range of IP addresses to check for active devices.

8. **Quick Network Diagnostic**: 
   - Performs basic network diagnostics like pinging public DNS servers and resolving a domain name.

9. **Active Directory Management**: 
   - Manage users, groups, and computers in Active Directory.
   - Sub-menu includes options for viewing user/group details, adding/removing users from groups, and more.

10. **WSUS Management**: 
    - Reset Windows Update configuration locally or on a remote machine.

11. **Wake on LAN**: 
    - Sends a Wake-on-LAN (WOL) packet to a specified machine to wake it remotely.

## Notes

- **Error Handling**: The script includes basic error handling to guide users through incorrect inputs.
- **Permissions**: Some tasks may require administrative privileges on the local or remote machine.
- **Customization**: This script can be extended or modified to suit specific network or system management needs.

## Disclaimer

Use this script responsibly and ensure you have the necessary permissions to execute these commands on target machines.

---

This README provides a clear understanding of the script's functionalities and how to use it effectively.
