Clear-Host
$poulpe = @"
⠀⠀⠀⠀⠀⠀⢀⣀⣠⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⣠⣶⣾⣷⣶⣄⠀⠀⠀⠀⠀
⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⢰⣿⠟⠉⠻⣿⣿⣷⠀⠀⠀⠀
⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢷⣄⠘⠿⠀⠀⠀⢸⣿⣿⡆⠀⠀⠀
⠀⠀⠀⠀⠈⠿⣿⣿⣿⣿⣿⣀⣸⣿⣷⣤⣴⠟⠀⠀⠀⠀⢀⣼⣿⣿⠁⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠈⠙⣛⣿⣿⣿⣿⣿⣿⣿⣿⣦⣀⣀⣀⣴⣾⣿⣿⡟⠀⠀⠀⠀
⠀⠀⠀⢀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⣠⣤⣀⠀⠀
⠀⠀⣴⣿⣿⣿⠿⠟⠛⠛⢛⣿⣿⣿⣿⣿⣿⣧⡈⠉⠁⠀⠀⠀⠈⠉⢻⣿⣧⠀
⠀⣼⣿⣿⠋⠀⠀⠀⠀⢠⣾⣿⣿⠟⠉⠻⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⣸⣿⣿⠃
⠀⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⡿⠃⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣶⣿⣿⣿⡿⠋⠀
⠀⢿⣿⣧⡀⠀⣶⣄⠘⣿⣿⡇⠀⠀⠀⣸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠈⠻⣿⣿⣿⣿⠏⠀⢻⣿⣿⣄⠀⠀⠀⣸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣶⣾⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠛⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"@

do {
    Write-Output $poulpe
    Write-Output " --------------------------------- "
    Write-Output "| Please choose a number :        |"
    Write-Output " --------------------------------- "
    Write-Output "|             Menu                |"
    Write-Output " --------------------------------- "
    Write-Output "| 1. Connection ssh               |"
    Write-Output "| 2. View IP Configuration        |"
    Write-Output "| 3. Ping                         |"
    Write-Output "| 4. nslookup                     |"
    Write-Output "| 5. gpupdate /force              |"
    Write-Output "| 6. tracert                      |"
    Write-Output "| 7. Network Scan                 |"
    Write-Output "| 8. Rapid network diagnostics    |"
    Write-Output "| 9. Active Directory             |"
    Write-Output "| 10. WSUS                        |"
    Write-Output "| 11. Wake on Lan                 |"
    write-output " --------------------------------- "
    Write-Output "| q. To leave                     |"
    Write-Output " --------------------------------- "

    $choix = Read-Host "Enter your choice"
    switch ($choix) {
        q {
            Clear-Host
        }
        1 {
            $PCcommande = Read-Host "PC name"
            do {
                $commande = Read-Host "Command to run (press q to exit)"
                if ($commande -eq 'q') {
                    break
                }
                Invoke-Command -ComputerName $PCcommande -ScriptBlock {
                    param ($commandeInterne)
                    Invoke-Expression $commandeInterne
                } -ArgumentList $commande
                } while ($true)
        Pause | Clear-Host
        }
        2 {
            ipconfig /all
            pause | Clear-Host
        }
        3 {
            $ping = Read-Host "What is the IP address/pc name ping"
            ping $ping
            pause | Clear-Host
        }
        4 {
            $nslookup = Read-Host "What is the IP Address/DNS Name"
            nslookup $nslookup
            pause | Clear-Host
        }
        5 {
            $gpupdate = Read-Host "Which PC to run GPOs"
            Invoke-GPUpdate -Computer $gpupdate -RandomDelayInMinutes 0
            pause | Clear-Host
        }
        6 {
            $TraceRT = Read-Host "What is the IP address to be traced"
            tracert $TraceRT
            pause | Clear-Host
        }
        7 {
            $adresseIPBase = Read-Host "What is the IP address to scan (ex: 192.168.0.)"
            for ($i = 1; $i -le 255; $i++) {
                $adresseIP = $adresseIPBase + $i
                $resultatTest = Test-Connection -ComputerName $adresseIP -Count 1 -ErrorAction SilentlyContinue
                Write-Output "Connection test to $adresseIP : $($resultatTest.StatusCode)"
                }
            pause | Clear-Host
            }
        8 {
            Write-Host "ping 8.8.8.8"
            Test-Connection 8.8.8.8
            pause
            Test-Connection google.com
            pause
            nslookup fabebook.com 8.8.8.8
            pause | Clear-Host
        }
        9 {
           do {
                Clear-Host
                Write-Output $poulpe
                Write-Output " ------------------------------------- "
                Write-Output "| Please choose a number:             |"
                Write-Output " ------------------------------------- "
                Write-Output "|     menu : ACTIVE DIRECTORY         |"
                Write-Output " ------------------------------------- "
                Write-Output "| 1. Manage a User                    |"
                Write-Output "| 2. Manage a Group                   |"
                Write-Output "| 3. Manage a PC                      |"
                Write-Output "| 4. AD replication status            |"
                Write-Output " ------------------------------------- "
                Write-Output "| q. Return                           |"
                Write-Output " -------------------------------------"

                $choix1 = Read-Host "Enter your choice"
                switch ($choix1) {
                    q {
                        Write-Output "Return"
                    }
                    1 {
                            
                        do {
                            $nomuserRecherche = Read-Host "Enter the user's last name (or 'q' for exit)"
                        
                            if ($nomuserRecherche -eq 'q') {
                                Write-Output "Research cancelled"
                                break
                            }
                        
                            $userRecherche = Get-ADUser -Filter {sn -eq $nomuserRecherche} -Property SamAccountName
                        
                            if ($userRecherche) {
                                Write-Output "$nomuserRecherche's SamAccountName is : $($userRecherche.SamAccountName)"
                                
                                break
                            } else {
                                Write-Output "User with last name '$nomuserRecherche' Not found. Please try again."
                            }
                           
                        } while ($true)
                         $nomUser1 = read-host "Enter the user's SamAccountName"
                         
                        do {
                            Clear-Host
                            Write-Output $poulpe
                            Write-Output " --------------------------------------"
                            Write-Output "| Please choose a number :            |"
                            Write-Output " -------------------------------------- "
                            Write-Output "|         menu : $nomUser1            |"
                            Write-Output " -------------------------------------- "
                            Write-Output "| 1. See the information of $nomUser1 |"
                            Write-Output "| 2. See $nomUser1 groups             |"
                            Write-Output "| 3. Add $nomUser1 to a group         |"
                            Write-Output "| 4. Remove $nomUser1 from a group    |"
                            Write-Output "| 5. Move $nomUser1 in the ad         |"
                            Write-Output "| 6. Reset the PWD of $nomUser1       |"
                            Write-Output " -------------------------------------- "
                            Write-Output "| q. Return                           |"
                            Write-Output " --------------------------------------"

                            $choix1_1 = Read-Host "Enter your choice"

                            switch ($choix1_1) {
                                q {
                                    Write-Output "Return"
                                }
                                1 {
                                    Get-ADUser -Identity $nomUser1 -Properties * | Select-Object EmailAddress, wWWHomePage, SAMAc1ountName, PasswordLastSet, PasswordExpired, Department, Description, DisplayName, DistinguishedName, whenCreated, Enabled
                                    pause | Clear-Host
                                }
                                2 {
                                    Get-ADUser -Identity $nomUser1 -Property MemberOf | Select-Object -ExpandProperty MemberOf | ForEach-Object { ($_ -split ',')[0] -replace '^CN=' }
                                    pause | Clear-Host
                                }
                                3 {
                                    $groupeADadd1_1 = Read-Host "What is the group to add"
                                    Write-Output "Added $nomUser1 to the $groupeADadd1_1..."
                                    Add-ADGroupMember -Identity $groupeADadd1_1 -Members $nomUser1
                                    Start-Sleep -Seconds 1
                                    Write-Output "$nomUser1 was added to the $groupeADadd1_1"
                                    Get-ADUser -Identity $nomUser1 -Property MemberOf | Select-Object -ExpandProperty MemberOf | ForEach-Object { ($_ -split ',')[0] -replace '^CN=' }
                                    pause | Clear-Host
                                }
                                4 {
                                    Get-ADUser -Identity $nomUser1 -Property MemberOf | Select-Object -ExpandProperty MemberOf | ForEach-Object { ($_ -split ',')[0] -replace '^CN=' }
                                    $groupeADdelet1_1 = Read-Host "What is the group to be deleted"
                                    Write-Output "Removed $nomUser1 from the $groupeADdelet1_1..."
                                    Remove-ADGroupMember -Identity $groupeADdelet1_1 -Members $nomUser1
                                    Start-Sleep -Seconds 1
                                    Write-Output "$nomUser1 has been removed from the $groupeADdelet1_1 group"

                                    pause | Clear-Host
                                }
                                5 {
                                    $NomOU5 = Read-Host "What is the agent's new OU"
                                    $nom5 = Get-ADUser $nomUser1
                                    Move-ADObject -Identity $Nom5 -TargetPath $NomOU5
                                    Write-Output = "$nomUser1 was moved here: $NomOU5"
                                    pause | Clear-Host
                                }
                                6{
                                    Set-ADAccountPassword -Identity $nomUser1 -Reset
                                    Set-ADUser -Identity $nomUser1 -ChangePasswordAtLogon $true
                                    Write-Output "$nomUser1's password has been reset"
                                    pause | Clear-Host
                                }
                                default1_1 {
                                    Write-Output "Invalid choice !"
                                    Start-Sleep -Seconds 1
                                }
                            }
                        } while ($choix1_1 -ne "q")
                        Clear-Host
                    }
                    2 {
                        $nomGroupe1 = Read-Host "What is the group to manage"
                        do {
                            Clear-Host
                            Write-Output $poulpe
                            Write-Output " ---------------------------------------"
                            Write-Output "| Please choose a number :              |"
                            Write-Output " --------------------------------------- "
                            Write-Output "|         menu : $nomGroupe1            |"
                            Write-Output " -------------------------------------- "
                            Write-Output "| 1. See $nomGroupe1 users              |"
                            Write-Output "| 2. Add a user in $nomGroupe1          |"
                            Write-Output "| 3. Add a computer in $nomGroupe1      |"
                            Write-Output "| 4. Delete a user in $nomGroupe1       |"
                            Write-Output "| 5. Delete a comptuter in $nomGroupe1  |"
                            Write-Output " --------------------------------------- "
                            Write-Output "| q. Return                             |"
                            Write-Output " ---------------------------------------"

                            $choix1_2 = Read-Host "Enter your choice"

                            switch ($choix1_2) {
                                q {
                                    Write-Output "Return"
                                }
                                1 {
                                    Get-ADGroupMember -Identity $nomGroupe1 | Select-Object name
                                    pause | Clear-Host
                                }
                                2 {
                                    $nomuserAdd1_2 = Read-Host "which user to add"
                                    Add-ADGroupMember -Identity $nomGroupe1 -Members $nomuserAdd1_2
                                    Write-Output "$nomuserAdd1_2 has been added to group $nomGroupe1"
                                    pause | Clear-Host
                                }
                                3{
                                    $nomPCAdd1_2 = Read-Host "Witch computer to add"
                                    $cheminPC1_2 = Get-ADComputer -Identity $nomPCAdd1_2 | Select-Object DistinguishedName
                                    Add-ADGroupMember -Identity $nomGroupe1 -Members $cheminPC1_2
                                    Write-Output "$nomPCAdd1_2 has been added to group $nomGroupe1"
                                    pause | Clear-Host
                                }
                                4 {
                                    Get-ADGroupMember -Identity $nomGroupe1 | Select-Object name
                                    $nomuserDelet1_2 = Read-Host "which user should be deleted"
                                    Remove-ADGroupMember -Identity $nomGroupe1 -Members $nomuserDelet1_2
                                    Write-Output "$nomuserDelet1_2 has been removed from group $nomGroupe1"
                                    pause | Clear-Host
                                }
                                5{
                                    Get-ADGroupMember -Identity $nomGroupe1 | Select-Object name
                                    $nomPCRemove1_2 = Read-Host "which computer should be deleted"
                                    $cheminPC1_2 = Get-ADComputer -Identity $nomPCRemove1_2 | Select-Object DistinguishedName
                                    Remove-ADGroupMember -Identity $nomGroupe1 -Members $cheminPC1_2
                                    Write-Output "$nomPCRemove1_2 has been removed to group $nomGroupe1"
                                    pause | Clear-Host
                                }
                                default1_2 {
                                    Write-Output "Invalid choice !"
                                    Start-Sleep -Seconds 1
                                }
                            }
                        } while ($choix1_2 -ne "q")
                    Clear-Host
                    }
                    3 {
                        $nomPC1 = Read-Host "What is the PC to manage"
                        do {
                            Clear-Host
                            Write-Output $poulpe
                            Write-Output " --------------------------------------- "
                            Write-Output "| Please choose a number:               |"
                            Write-Output " --------------------------------------- "
                            Write-Output "|         menu : $nomPC1                |"
                            Write-Output " --------------------------------------- "
                            Write-Output "| 1. See the info of $nomPC1            |"
                            Write-Output "| 2. Move $nomPC1 in the ad             |"
                            Write-output "| 3. Add a $nomPC1 in group             |"
                            Write-output "| 4. Remove $nomPC1 in group            |"
                            Write-output "| 5. View $nomPC1 password              |"
                            Write-Output " --------------------------------------- "
                            Write-Output "| q. Return                             |"
                            Write-Output " --------------------------------------- "

                            $choix1_3 = Read-Host "Enter your choice"

                            switch ($choix1_3) {
                                q {
                                    Write-Output "Return"
                                }
                                1 {
                                    Get-ADComputer $nomPC1
                                    pause | Clear-Host
                                }
                                2{
                                    $NomOUPC2 = Read-Host "What is the new OU of the PC"
                                    $nomPC2 = Get-ADComputer $nomPC1
                                    Move-ADObject -Identity $nomPC2 -TargetPath $NomOUPC2
                                    Write-Output = "$nomPC1 has been moved here: $NomOUPC2"
                                    pause | Clear-Host
                                }
                                3{
                                    $nomGroupeAdd1_3 = Read-Host "Witch group to add"
                                    $cheminPC1_3 = Get-ADComputer -Identity $nomPC1 | Select-Object DistinguishedName
                                    Add-ADGroupMember -Identity $nomGroupeAdd1_3 -Members $cheminPC1_3
                                    Write-Output "$nomPC1 has been added to group $nomGroupeAdd1_3"
                                    pause | Clear-Host
                                }
                                4{
                                    $nomGroupRemove1_2 = Read-Host "which group should be deleted"
                                    $cheminPC1_2 = Get-ADComputer -Identity $nomPC1 | Select-Object DistinguishedName
                                    Remove-ADGroupMember -Identity $nomGroupRemove1_2 -Members $cheminPC1_2
                                    Write-Output "$nomPC1 has been removed to group $nomGroupRemove1_2"
                                    pause | Clear-Host
                                }
                                5{
                                    $passwordPC1= Get-AdmPwdPassword -ComputerName $nomPC1 | Select-Object password 
                                    Write-Host "The password is $passwordPC1"
                                    pause | Clear-Host
                                }
                                default1_3 {
                                    Write-Output "Invalid choice !"
                                    Start-Sleep -Seconds 1
                                }
                            }
                        } while ($choix1_3 -ne "q")
                    Clear-Host
                    }
                    4 {
                        Repadmin /replsum
                        Pause | Clear-Host
                    }

                    default {
                        Write-Output "Invalid choice !"
                        Start-Sleep -Seconds 1
                    }
                }
            } while ($choix1 -ne "q")

           Clear-Host
        }
        default {
            Write-Output "Invalid choice !"
            Start-Sleep -Seconds 1 | Clear-Host
        }
        10 {
           do {
                Clear-Host
                Write-Output $poulpe
                Write-Output " ----------------------------------- "
                Write-Output "| Please choose a number:            |"
                Write-Output " ----------------------------------- "
                Write-Output "|         menu : WSUS                |"
                Write-Output " ------------------------------------ "
                Write-Output "| 1. Reset the WSUS config           |"
                Write-Output "| 2. Reset the WSUS config remotely  |"
                Write-Output " ------------------------------------ "
                Write-Output "| q. Return                          |"
                Write-Output " ------------------------------------"

                $choix2 = Read-Host "Enter your choice"

                switch ($choix2) {
                    q {
                        Write-Output "Return"
                    }
                    1 {
                        $pcwsusservice = "wuauserv"
                        Write-Output "Discontinuation of $pcwsusservice service"
                        Stop-Service -Name $pcwsusservice
                        Start-Sleep -Seconds 1
                        $PCWSUSdossier = "C:\Windows\SoftwareDistribution"
                        Write-Output "Deleting $PCWSUSdossier"
                        Remove-Item $PCWSUSdossier -Recurse
                        Start-Sleep -Seconds 1
                        Set-Location HKLM:
                        $pcwsusregistre = "SusClientId"
                        Write-Output "Removing the registry key $pcwsusregistre"
                        Remove-ItemProperty -Path "\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" -Name SusClientId
                        Start-Sleep -Seconds 1
                        Write-Output "Starting the $pcwsusservice service"
                        Start-Service -Name $pcwsusservice
                        Start-Sleep -Seconds 1
                        Write-Output "Renistialization of the Windows Update configuration"
                        wuauclt /resetauthorization /detectnow
                        wuauclt /reportnow
                        Start-Sleep -Seconds 1
                        c:
                        Write-Output "Export windows update logs"
                        Get-WindowsUpdateLog
                        Start-Sleep -Seconds 1
                        Write-Output "GPO updates"
                        gpupdate /force
                        Start-Sleep -Seconds 1
                    }
                    2 {
                        $PCWSUS = Read-Host "which PC to connect to the WSUS"
                        Invoke-Command -ScriptBlock {
                            $pcwsusservice = "wuauserv"
                            Write-Output "Discontinuation of $pcwsusservice service"
                            Stop-Service -Name $pcwsusservice
                            Start-Sleep -Seconds 1
                            $PCWSUSdossier = "C:\Windows\SoftwareDistribution"
                            Write-Output "Deleting $PCWSUSdossier"
                            Remove-Item $PCWSUSdossier -Recurse
                            Start-Sleep -Seconds 1
                            Set-Location HKLM:
                            $pcwsusregistre = "SusClientId"
                            Write-Output "Removing the registry key $pcwsusregistre"
                            Remove-ItemProperty -Path "\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" -Name SusClientId
                            Start-Sleep -Seconds 1
                            Write-Output "Starting the $pcwsusservice service"
                            Start-Service -Name $pcwsusservice
                            Start-Sleep -Seconds 1
                            Write-Output "Renistialization of the Windows Update configuration"
                            wuauclt /resetauthorization /detectnow
                            wuauclt /reportnow
                            Start-Sleep -Seconds 1
                            c:
                            Write-Output "Export windows update logs"
                            Get-WindowsUpdateLog
                            Start-Sleep -Seconds 1
                            Write-Output "GPO updates"
                            gpupdate /force
                            Start-Sleep -Seconds 1
                        } -ComputerName $PCWSUS
                        pause | Clear-Host
                    }
                    default2 {
                        Write-Output "Invalid choice !"
                        Start-Sleep -Seconds 1
                    }
                }
            } while ($choix2 -ne "q")
            Clear-Host
        }

        default2 {
            Write-Output "Invalid choice !"
            Start-Sleep -Seconds 1 | Clear-Host
        } 

        11{
            function Send-WakeOnLan {
                param ([string] $macAddress = (Read-Host "Enter the MAC address of the target computer"))
            
                $macBytes = $macAddress -split '[:-]' | ForEach-Object { [byte]('0x' + $_) }
            
                if ($macBytes.Length -ne 6) {
                    throw 'Invalid MAC'
                }
                $wolPacket = [byte[]](, 0xFF * 6) + ($macBytes * 16)
                $udpClient = New-Object System.Net.Sockets.UdpClient
                $udpClient.Connect(([System.Net.IPAddress]::Broadcast), 4000)
                [void]$udpClient.Send($wolPacket, $wolPacket.Length)
                Write-Host "Magic package send to $macAddress"
                Start-Sleep -Seconds 1

                $udpClient.Close()
            }
            Send-WakeOnLan
            Pause | Clear-Host
        }

    }
} while ($choix -ne "q")
Clear-Host
