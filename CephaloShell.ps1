Clear-Host
function get-poulpe {write-output @"
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
"@}

do {
    function Show-Menu {

    $option1 = "Connection SSH"
    $option2 = "View IP Configuration"
    $option3 = "Ping"
    $option4 = "Nslookup"
    $option5 = "Gpupdate /force"
    $option6 = "Tracert"
    $option7 = "Network Scan"
    $option8 = "Rapid Network Diagnostics"
    $option9 = "Active Directory"
    $option10 = "WSUS"
    $option11 = "Wake On Lan"
    $exitOption = "q. To Leave"

    $totalWidth = 90

    $border = ("-" * $totalWidth)

    function Option {
        param($optionNumber, $optionText)
        $optionLine = "$optionNumber. $optionText"
        return $optionLine + (" " * ($totalWidth - ($optionLine.Length + 3)))
    }

    Write-Host " $border"
    Write-Host "| Please choose a number : "(" " * ($totalWidth - 30))"|"
    Write-Host " $border"
    Write-Host "| Menu"(" " * ($totalWidth - 9))"|"
    Write-Host " $border"
    Write-Host "| $(Option 1 $option1)|"
    Write-Host "| $(Option 2 $option2)|"
    Write-Host "| $(Option 3 $option3)|"
    Write-Host "| $(Option 4 $option4)|"
    Write-Host "| $(Option 5 $option5)|"
    Write-Host "| $(Option 6 $option6)|"
    Write-Host "| $(Option 7 $option7)|"
    Write-Host "| $(Option 8 $option8)|"
    Write-Host "| $(Option 9 $option9)|"
    Write-Host "| $(Option 10 $option10)|"
    Write-Host "| $(Option 11 $option11)|"
    Write-Host " $border"
    Write-Host "| $(Option $exitOption)|"
    Write-Host " $border"
}
get-poulpe
Show-Menu
$choix = Read-Host "Enter your choice"
switch ($choix) {
    q {
        Clear-Host
    }
    1 {
        $PCcommande = Read-Host "PC name (press q to exit)"
        if ($PCcommande -eq 'q'){
            Start-Sleep -Milliseconds 500 | Clear-Host
            break
        }
        do {
            $commande = Read-Host "Command to run (press q to exit)"
            if ($commande -eq 'q'){
                break
            }
            else {
                Invoke-Command -ComputerName $PCcommande -ScriptBlock {
                    param ($commandeInterne)
                    Invoke-Expression $commandeInterne
                } -ArgumentList $commande
            }
        } while ($true)
        Clear-Host
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
        Write-Output "ping 8.8.8.8"
        ping 8.8.8.8
        start-sleep -Milliseconds 500
        Write-Output "ping google.com"
        ping google.com
        Start-Sleep -Milliseconds 500
        Write-Output "nslookup facebook 8.8.8.8"
        nslookup fabebook.com 8.8.8.8
        Pause | Clear-Host
    }
    9 {
        Clear-Host
        do {
            function Show-MenuAD {
                $optionAD1 = "Manage a User"
                $optionAD2 = "Manage a Group"
                $optionAD3 = "Manage a PC"
                $optionAD4 = "AD replication status"
                $exitADOption = "q. Return"
                $totalWidth = 90
                $border = ("-" * $totalWidth)
                function OptionAD {
                    param($optionNumber, $optionText)
                    $optionLine = "$optionNumber. $optionText"
                    return $optionLine + (" " * ($totalWidth - ($optionLine.Length + 3)))
                }
                Write-Host " $border"
                Write-Host "| Please choose a number : "(" " * ($totalWidth - 30))"|"
                Write-Host " $border"
                Write-Host "| Active Directory Menu "(" " * ($totalWidth - 28))"|"
                Write-Host " $border"
                Write-Host "| $(OptionAD 1 $optionAD1)|"
                Write-Host "| $(OptionAD 2 $optionAD2)|"
                Write-Host "| $(OptionAD 3 $optionAD3)|"
                Write-Host "| $(OptionAD 4 $optionAD4)|"
                Write-Host " $border"
                Write-Host "| $(OptionAD $exitADOption)|"
                Write-Host " $border"
            }
            Clear-Host
            get-poulpe
            Show-MenuAD
            $choix1 = Read-Host "Enter your choice"
            switch ($choix1) {
                q {
                    Clear-Host
                }
                1 {
                    do {
                        $nomuserRecherche = Read-Host "Enter the user's last name (or 'q' to cancel the search)"
                        if ($nomuserRecherche -eq 'q') {
                            Write-Output "Research cancelled. Exiting script."
                            break
                        }
                        $userRecherche = Get-ADUser -Filter {sn -eq $nomuserRecherche} -Property SamAccountName
                        if ($userRecherche) {
                            Write-Output "$nomuserRecherche's SamAccountName is : $($userRecherche.SamAccountName)"
                            $nomUser1 = Read-Host "Enter the user's SamAccountName"
                            Clear-Host
                            do {
                                function Show-MenuAD_User {
                                    $nomcomplet = Get-ADUser -Identity $nomUser1 -Property DisplayName
                                    $optionAD1_User = "See the information of $nomUser1"
                                    $optionAD2_User = "See $nomUser1 groups"
                                    $optionAD3_User = "Add $nomUser1 to a group"
                                    $optionAD4_User = "Remove $nomUser1 frome a group"
                                    $optionAD5_User = "Move $nomUser1 in the ad"
                                    $optionAD6_User = "Reset the PWD of $nomUser1"
                                    $optionAD7_User = "Deactivate/activate $nomUser1's account"
                                    $exitADOption_User = "q. Return"
                                    $totalWidth = 90
                                    $border = ("-" * $totalWidth)
                                    function OptionAD_User {
                                        param($optionNumber, $optionText)
                                        $optionLine = "$optionNumber $optionText"
                                        return $optionLine + (" " * ($totalWidth - ($optionLine.Length + 3)))
                                    }
                                    Write-Host " $border"
                                    Write-Host "| Please choose a number : "(" " * ($totalWidth - 30))"|"
                                    Write-Host " $border"
                                    Write-Host "| $(OptionAD_User 'Menu :' $($nomcomplet.DisplayName))|"
                                    Write-Host " $border"
                                    Write-Host "| $(OptionAD_User 1 $optionAD1_User)|"
                                    Write-Host "| $(OptionAD_User 2 $optionAD2_User)|"
                                    Write-Host "| $(OptionAD_User 3 $optionAD3_User)|"
                                    Write-Host "| $(OptionAD_User 4 $optionAD4_User)|"
                                    Write-Host "| $(OptionAD_User 5 $optionAD5_User)|"
                                    Write-Host "| $(OptionAD_User 6 $optionAD6_User)|"
                                    Write-Host "| $(OptionAD_User 7 $optionAD7_User)|"
                                    Write-Host " $border"
                                    Write-Host "| $(OptionAD_User $exitADOption_User)|"
                                    Write-Host " $border"
                                }
                                Clear-Host
                                get-poulpe
                                Show-MenuAD_User
                                $choix1_1 = Read-Host "Enter your choice"
                                switch ($choix1_1) {
                                    q {
                                        Clear-Host
                                    }
                                    1 {
                                        Get-ADUser -Identity $nomUser1 -Properties * | Select-Object EmailAddress, wWWHomePage, SamAccountName, PasswordLastSet, PasswordExpired, Department, Description, DistinguishedName, whenCreated, Enabled
                                        pause | Clear-Host
                                    }
                                    2 {
                                        Get-ADUser -Identity $nomUser1 -Property MemberOf | Select-Object -ExpandProperty MemberOf | ForEach-Object { ($_ -split ',')[0] -replace '^CN=' }
                                        pause | Clear-Host
                                    }
                                    3 {
                                        do {
                                            $nomgroupeADadd1_1 = Read-Host "What is the group to add or 'q' to cancel the search)"
                                            if ($nomgroupeADadd1_1 -eq 'q') {
                                                break
                                            }
                                            $groupeRechercheADadd1_1 = Get-ADGroup -Filter {Name -eq $nomgroupeADadd1_1} -Property SamAccountName
                                            if ($groupeRechercheADadd1_1) {
                                                $groupeADadd1_1 = $($groupeRechercheADadd1_1.SamAccountName)
                                                Write-Output "Added $nomUser1 to the $groupeADadd1_1..."
                                                Add-ADGroupMember -Identity $groupeADadd1_1 -Members $nomUser1
                                                Start-Sleep -Milliseconds 500
                                                Write-Output "$nomUser1 was added to the $groupeADadd1_1"
                                                Get-ADUser -Identity $nomUser1 -Property MemberOf | Select-Object -ExpandProperty MemberOf | ForEach-Object { ($_ -split ',')[0] -replace '^CN=' }
                                            } else {
                                                Write-Output "No group found with the name '$nomgroupeADadd1_1'. Please try again."
                                            }
                                        } while ($true)
                                        Start-Sleep -Milliseconds 500 | Clear-Host
                                    }
                                    4 {
                                        Get-ADUser -Identity $nomUser1 -Property MemberOf | Select-Object -ExpandProperty MemberOf | ForEach-Object { ($_ -split ',')[0] -replace '^CN=' }
                                        do {
                                            $nomgroupeADDelete1_1 = Read-Host "What is the group to add or 'q' to cancel the search)"
                                            if ($nomgroupeADDelete1_1 -eq 'q') {
                                                break
                                            }
                                            $groupeRechercheADDelete1_1 = Get-ADGroup -Filter {Name -eq $nomgroupeADDelete1_1} -Property SamAccountName
                                            if ($groupeRechercheADDelete1_1) {
                                                $groupeADdelet1_1 = $($groupeRechercheADDelete1_1.SamAccountName)
                                                Write-Output "Removed $nomUser1 from the $groupeADdelet1_1..."
                                                Remove-ADGroupMember -Identity $groupeADdelet1_1 -Members $nomUser1
                                                Start-Sleep -Milliseconds 500
                                                Write-Output "$nomUser1 has been removed from the $groupeADdelet1_1 group"
                                            } else {
                                                Write-Output "No group found with the name '$nomgroupeADadd1_1'. Please try again."
                                            }
                                        } while ($true)
                                        Start-Sleep -Milliseconds 500 | Clear-Host
                                    }
                                    5 {
                                        $NomOU5 = Read-Host "What is the agent's new OU"
                                        $NomOURecherche5 = Get-ADOrganizationalUnit -Filter { Name -eq $NomOU5}
                                        $nomOUok5 = Get-ADOrganizationalUnit $nomOUrecherche5
                                        $Nom5 = Get-ADUser $nomUser1
                                        Move-ADObject -Identity $Nom5 -TargetPath $nomOUok5
                                        Write-Output = "$nomUser1 was moved here: $NomOURecherche5"
                                        pause | Clear-Host
                                    }
                                    6{
                                        do {
                                            $confirm = Read-Host "Are you sure you want to reset the password for $nomUser1? (Y/N)"
                                            if ($confirm -eq "Y") {
                                                $passwordexpire = Get-ADUser $nomUser1 -Properties PasswordNeverExpires
                                                if ($passwordexpire.PasswordNeverExpires -eq $true){
                                                    Set-ADUser $nomUser1 -PasswordNeverExpires $false
                                                }
                                                Set-ADAccountPassword -Identity $nomUser1 -Reset
                                                Set-ADUser -Identity $nomUser1 -ChangePasswordAtLogon $true
                                                Write-Output "$nomUser1's password has been reset"
                                                $validInput = $true
                                            } elseif ($confirm -eq "N") {
                                                Write-Output "Password reset canceled."
                                                $validInput = $true
                                            } else {
                                                Write-Output "Invalid input. Please enter 'Y' or 'N'."
                                                $validInput = $false
                                            }
                                        } while (-not $validInput)
                                        pause | Clear-Host
                                    }
                                    7{
                                        $userdesactive_reactive = Get-ADUser $nomUser1 -Properties * | Select-Object Enabled
                                        if ($userdesactive_reactive.Enabled -eq $false){
                                            Enable-ADAccount -Identity $nomUser1
                                            Write-Output "The $nomUser1 account has been reactivated"
                                        }else {
                                            Disable-ADAccount -Identity $nomUser1
                                            Write-Output "The $nomUser1 account has been deactivated"
                                        }
                                        Pause | Clear-Host
                                    }
                                    default {
                                        Write-Output "Invalid choice !"
                                        Start-Sleep -Milliseconds 500
                                    }
                                }
                            } while ($choix1_1 -ne "q")
                            break
                        } else {
                            Write-Output "User with last name '$nomuserRecherche' not found. Please try again."
                        }
                    } while ($true)
                    Clear-Host
                }
                2{
                    do {
                        $nomGroupeRecherche = Read-Host "Enter the group's name (or 'q' to cancel the search)"
                        if ($nomGroupeRecherche -eq 'q') {
                            Write-Output "Search cancelled. Exiting script."
                            break
                        }
                        $groupeRecherche = Get-ADGroup -Filter {Name -eq $nomGroupeRecherche} -Property SamAccountName
                        if ($groupeRecherche) {
                            $nomGroupe1 = $($groupeRecherche.SamAccountName)
                            do {
                                function Show-MenuAD_group {
                                    $optionAD1_group = "See $($groupeRecherche.SamAccountName) users"
                                    $optionAD2_group = "Add a user in $($groupeRecherche.SamAccountName)"
                                    $optionAD3_group = "Add a computer in $($groupeRecherche.SamAccountName)"
                                    $optionAD4_group = "Delete a user in $($groupeRecherche.SamAccountName)"
                                    $optionAD5_group = "Delete a computer in $($groupeRecherche.SamAccountName)"
                                    $optionAD6_group = "Move $($groupeRecherche.SamAccountName) in AD"
                                    $exitADOption_group = "q. Return"
                                    $totalWidth = 90
                                    $border = ("-" * $totalWidth)
                                    function OptionAD_group {
                                        param($optionNumber, $optionText)
                                        $optionLine = "$optionNumber $optionText"
                                        return $optionLine + (" " * ($totalWidth - ($optionLine.Length + 3)))
                                    }
                                    Write-Host " $border"
                                    Write-Host "| Please choose a number : " + (" " * ($totalWidth - 30))"|"
                                    Write-Host " $border"
                                    Write-Host "| $(OptionAD_group 'Menu :' $nomGroupe1)|"
                                    Write-Host " $border"
                                    Write-Host "| $(OptionAD_group 1 $optionAD1_group)|"
                                    Write-Host "| $(OptionAD_group 2 $optionAD2_group)|"
                                    Write-Host "| $(OptionAD_group 3 $optionAD3_group)|"
                                    Write-Host "| $(OptionAD_group 4 $optionAD4_group)|"
                                    Write-Host "| $(OptionAD_group 5 $optionAD5_group)|"
                                    Write-Host "| $(OptionAD_group 6 $optionAD6_group)|"
                                    Write-Host " $border"
                                    Write-Host "| $(OptionAD_group $exitADOption_group)|"
                                    Write-Host " $border"
                                }
                                Clear-Host
                                get-poulpe
                                Show-MenuAD_group
                                $choix1_2 = Read-Host "Enter your choice"
                                switch ($choix1_2) {
                                    q {
                                        break
                                    }
                                    1 {
                                        Get-ADGroupMember -Identity $nomGroupe1 | Select-Object Name, SamAccountName
                                        pause | Clear-Host
                                    }
                                    2 {
                                        do {
                                            $nomuserRechercheforADDGroup = Read-Host "Enter the user's last name (or 'q' to cancel the search)"
                                            if ($nomuserRechercheforADDGroup -eq 'q') {
                                                break
                                                Clear-Host
                                            }
                                            $userRechercheforGourp = Get-ADUser -Filter {sn -eq $nomuserRechercheforADDGroup} -Property SamAccountName
                                            if ($userRechercheforGourp) {
                                                Write-Output "$nomuserRechercheforADDGroup's SamAccountName is : $($userRechercheforGourp.SamAccountName)"
                                                $nomuserAdd1_2 = Read-Host "Enter the user's SamAccountName"
                                                    Add-ADGroupMember -Identity $nomGroupe1 -Members $nomuserAdd1_2
                                                    Write-Output "$nomuserAdd1_2 has been added to group $nomGroupe1"
                                            } else {
                                                Write-Output "User with last name $nomuserRechercheforADDGroup not found. Please try again."
                                            }
                                        }while ($true)
                                        Clear-Host
                                    }
                                    3 {
                                        $nomPCAdd1_2 = Read-Host "which computer to add"
                                        $cheminPC1_2 = Get-ADComputer -Identity $nomPCAdd1_2 | Select-Object DistinguishedName
                                        Add-ADGroupMember -Identity $nomGroupe1 -Members $cheminPC1_2
                                        Write-Output "$nomPCAdd1_2 has been added to group $nomGroupe1"
                                        pause | Clear-Host
                                    }
                                    4 {
                                        Get-ADGroupMember -Identity $nomGroupe1 | Select-Object
                                        do {
                                            $nomuserRechercheforRemoveGroup = Read-Host "Enter the user's last name (or 'q' to cancel the search)"
                                            if ($nomuserRechercheforRemoveGroup -eq 'q') {
                                                break
                                                Clear-Host
                                            }
                                            $userRechercheforGourp = Get-ADUser -Filter {sn -eq $nomuserRechercheforRemoveGroup} -Property SamAccountName
                                            if ($userRechercheforGourp) {
                                                Write-Output "$nomuserRechercheforRemoveGroup's SamAccountName is : $($userRechercheforGourp.SamAccountName)"
                                                $nomuserDelet1_2 = Read-Host "Enter the user's SamAccountName"
                                                Remove-ADGroupMember -Identity $nomGroupe1 -Members $nomuserDelet1_2
                                                Write-Output "$nomuserDelet1_2 has been removed from group $nomGroupe1"
                                            } else {
                                                Write-Output "User with last name $nomuserRechercheforRemoveGroup not found. Please try again."
                                            }
                                        }while ($true)
                                        Clear-Host
                                    }
                                    5 {
                                        Get-ADGroupMember -Identity $nomGroupe1 | Select-Object name
                                        $nomPCRemove1_2 = Read-Host "which computer should be deleted"
                                        $cheminPC1_2 = Get-ADComputer -Identity $nomPCRemove1_2 | Select-Object DistinguishedName
                                        Remove-ADGroupMember -Identity $nomGroupe1 -Members $cheminPC1_2
                                        Write-Output "$nomPCRemove1_2 has been removed from group $nomGroupe1"
                                        pause | Clear-Host
                                    }
                                    6{
                                        $NomOU6 = Read-Host "What is the group's new OU"
                                        $NomOURecherche6 = Get-ADOrganizationalUnit -Filter { Name -eq $NomOU6}
                                        $nomOUok6 = Get-ADOrganizationalUnit $nomOUrecherche6
                                        $nom6 = Get-ADGroup $nomGroupe1
                                        Move-ADObject -Identity $nom6 -TargetPath $nomOUok6
                                        Write-Output = "$nomGroupe1 was moved here: $NomOURecherche6"
                                        pause | Clear-Host
                                    }
                                    default {
                                        Write-Output "Invalid choice !"
                                        Start-Sleep -Milliseconds 500
                                        Clear-Host
                                    }
                                }
                            } while ($choix1_2 -ne "q")
                        } else {
                            Write-Output "No group found with the name '$nomGroupeRecherche'. Please try again."
                        }
                    } while ($true)
                }
                3 {
                    $nomPC1 = Read-Host "What is the PC to manage"
                            do {
                                function Show-MenuAD_PC {
                                    $optionAD1_PC = "See the info of $nomPC1"
                                    $optionAD2_PC = "Move $nomPC1 in the AD"
                                    $optionAD3_PC = "Add a $nomPC1 in group"
                                    $optionAD4_PC = "Remove $nomPC1 in group"
                                    $optionAD5_PC = "View $nomPC1 local password"
                                    $optionAD6_PC = "Gpupdate /force"
                                    $optionAD7_PC = "SSH"
                                    $exitADOption_PC = "q. Return"
                                    $totalWidth = 90
                                    $border = ("-" * $totalWidth)
                                    function OptionAD_PC {
                                        param($optionNumber, $optionText)
                                        $optionLine = "$optionNumber $optionText"
                                        return $optionLine + (" " * ($totalWidth - ($optionLine.Length + 3)))
                                    }
                                    Write-Host " $border"
                                    Write-Host "| Please choose a number : "(" " * ($totalWidth - 30))"|"
                                    Write-Host " $border"
                                    Write-Host "| $(OptionAD_PC 'Menu :' $nomPC1)|"
                                    Write-Host " $border"
                                    Write-Host "| $(OptionAD_PC 1 $optionAD1_PC)|"
                                    Write-Host "| $(OptionAD_PC 2 $optionAD2_PC)|"
                                    Write-Host "| $(OptionAD_PC 3 $optionAD3_PC)|"
                                    Write-Host "| $(OptionAD_PC 4 $optionAD4_PC)|"
                                    Write-Host "| $(OptionAD_PC 5 $optionAD5_PC)|"
                                    write-host "| $(OptionAD_PC 6 $optionAD6_PC)|"
                                    write-host "| $(OptionAD_PC 7 $optionAD7_PC)|"
                                    Write-Host " $border"
                                    Write-Host "| $(OptionAD_PC $exitADOption_PC)|"
                                    Write-Host " $border"
                                }
                            Clear-Host
                            get-poulpe
                            Show-MenuAD_PC
                        $choix1_3 = Read-Host "Enter your choice"
                        switch ($choix1_3) {
                            q {
                                Clear-Host
                            }
                            1 {
                                Get-ADComputer $nomPC1
                                pause | Clear-Host
                            }
                            2{  
                                $NomOUPC2 = Read-Host "What is the new OU of the PC"
                                $NomOURecherche2 = Get-ADOrganizationalUnit -Filter { Name -eq $NomOUPC2}
                                $nomOUok2 = Get-ADOrganizationalUnit $NomOURecherche2
                                $nomPC2 = Get-ADComputer $nomPC1
                                Move-ADObject -Identity $nomPC2 -TargetPath $nomOUok2
                                Write-Output = "$nomPC1 was moved here: $NomOURecherche2"
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
                                Write-Output "The password is $passwordPC1"
                                pause | Clear-Host
                            }
                            6{
                                Write-Output "Gpupdate /force"
                                Invoke-GPUpdate -Computer $nomPC1 -RandomDelayInMinutes 0
                                pause | Clear-Host
                            }
                            7{
                                do {
                                    $commande = Read-Host "Command to run (press q to exit)"
                                    if ($commande -eq 'q') {
                                        break
                                    }
                                    else {
                                        Invoke-Command -ComputerName $nomPC1 -ScriptBlock {
                                        param ($commandeInterne)
                                        Invoke-Expression $commandeInterne
                                        } -ArgumentList $commande
                                    }
                                } while ($true)
                                Clear-Host
                            }
                            default {
                                Write-Output "Invalid choice !"
                                Start-Sleep -Milliseconds 500
                            }
                        }
                    } while ($choix1_3 -ne "q")
                }
                4 {
                    Repadmin /replsum
                    Pause | Clear-Host
                }
                default {
                    Write-Output "Invalid choice !"
                    Start-Sleep -Milliseconds 500
                }
            }
        } while ($choix1 -ne "q")
       Clear-Host
    }
    default {
        Write-Output "Invalid choice !"
        Start-Sleep -Milliseconds 500 | Clear-Host
    }
    10 {
            do {
                function Show-Menu_WSUS {
                    $option1_WSUS = "Reset the WSUS config "
                    $option2_WSUS = "Reset the WSUS config remotely"
                    $exitOption_WSUS = "q. Return"
                    $totalWidth = 90
                    $border = ("-" * $totalWidth)
                    function Option_WSUS {
                        param($optionNumber, $optionText)
                        $optionLine = "$optionNumber. $optionText"
                        return $optionLine + (" " * ($totalWidth - ($optionLine.Length + 3)))
                    }
                    Write-Host " $border"
                    Write-Host "| Please choose a number : "(" " * ($totalWidth - 30))"|"
                    Write-Host " $border"
                    Write-Host "| Menu"(" " * ($totalWidth - 9))"|"
                    Write-Host " $border"
                    Write-Host "| $(Option_WSUS 1 $option1_WSUS)|"
                    Write-Host "| $(Option_WSUS 2 $option2_WSUS)|"
                    Write-Host " $border"
                    Write-Host "| $(Option_WSUS $exitOption_WSUS)|"
                    Write-Host " $border"
                }
            Clear-Host
            get-poulpe
            Show-Menu_WSUS
            $choix2 = Read-Host "Enter your choice"
            switch ($choix2) {
                q {
                    Clear-Host
                }
                1 {
                    $pcwsusservice = "wuauserv"
                    Write-Output "Discontinuation of $pcwsusservice service"
                    Stop-Service -Name $pcwsusservice
                    Start-Sleep -Milliseconds 500
                    $PCWSUSdossier = "C:\Windows\SoftwareDistribution"
                    Write-Output "Deleting $PCWSUSdossier"
                    Remove-Item $PCWSUSdossier -Recurse
                    Start-Sleep -Milliseconds 500
                    Set-Location HKLM:
                    $pcwsusregistre = "SusClientId"
                    Write-Output "Removing the registry key $pcwsusregistre"
                    Remove-ItemProperty -Path "\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" -Name SusClientId
                    Start-Sleep -Milliseconds 500
                    Write-Output "Starting the $pcwsusservice service"
                    Start-Service -Name $pcwsusservice
                    Start-Sleep -Milliseconds 500
                    Write-Output "Renistialization of the Windows Update configuration"
                    wuauclt /resetauthorization /detectnow
                    wuauclt /reportnow
                    Start-Sleep -Milliseconds 500
                    c:
                    Write-Output "Export windows update logs"
                    Get-WindowsUpdateLog
                    Start-Sleep -Milliseconds 500
                    Write-Output "GPO updates"
                    gpupdate /force
                    Pause | Clear-Host
                }
                2 {
                    $PCWSUS = Read-Host "which PC to connect to the WSUS"
                    Invoke-GPUpdate -Computer $PCWSUS -RandomDelayInMinutes 0
                    Invoke-Command -ScriptBlock {
                        $pcwsusservice = "wuauserv"
                        Write-Output "Discontinuation of $pcwsusservice service"
                        Stop-Service -Name $pcwsusservice
                        Start-Sleep -Milliseconds 500
                        $PCWSUSdossier = "C:\Windows\SoftwareDistribution"
                        Write-Output "Deleting $PCWSUSdossier"
                        Remove-Item $PCWSUSdossier -Recurse
                        Start-Sleep -Milliseconds 500
                        Set-Location HKLM:
                        $pcwsusregistre = "SusClientId"
                        Write-Output "Removing the registry key $pcwsusregistre"
                        Remove-ItemProperty -Path "\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" -Name SusClientId
                        Start-Sleep -Milliseconds 500
                        Write-Output "Starting the $pcwsusservice service"
                        Start-Service -Name $pcwsusservice
                        Start-Sleep -Milliseconds 500
                        Write-Output "Renistialization of the Windows Update configuration"
                        wuauclt /resetauthorization /detectnow
                        wuauclt /reportnow
                        Start-Sleep -Milliseconds 500
                        c:
                        Write-Output "Export windows update logs"
                        Get-WindowsUpdateLog
                        Start-Sleep -Milliseconds 500
                        Write-Output "GPO updates"
                        gpupdate /force
                        Start-Sleep -Milliseconds 500
                    } -ComputerName $PCWSUS
                    pause | Clear-Host
                }
                default {
                    Write-Output "Invalid choice !"
                    Start-Sleep -Milliseconds 500
                }
            }
        } while ($choix2 -ne "q")
        Clear-Host
    }
    default2 {
        Write-Output "Invalid choice !"
        Start-Sleep -Milliseconds 500 | Clear-Host
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
            Write-Output "Magic package send to $macAddress"
            Start-Sleep -Milliseconds 500
            $udpClient.Close()
        }
        Send-WakeOnLan
        Pause | Clear-Host
    }
} while ($choix -ne "q")
Clear-Host
