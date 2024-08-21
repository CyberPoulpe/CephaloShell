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
    Write-Output "| Veuillez choisir un numéro :    |"
    Write-Output " --------------------------------- "
    Write-Output "|             Menu                |"
    Write-Output " --------------------------------- "
    Write-Output "| 1. Connexion ssh                |"
    Write-Output "| 2. Afficher la configuration IP |"
    Write-Output "| 3. Ping                         |"
    Write-Output "| 4. nslookup                     |"
    Write-Output "| 5. gpupdate /force              |"
    Write-Output "| 6. tracert                      |"
    Write-Output "| 7. Scan de réseau               |"
    Write-Output "| 8. Diagnostique réseau rapide   |"
    Write-Output "| 9. Active Directory             |"
    Write-Output "| 10. WSUS                        |"
    Write-Output "| 11. Wake on Lan                 |"
    Write-output "| 12. Problème en cours           |"
    write-output " --------------------------------- "
    Write-Output "| q. Quitter                      |"
    Write-Output " --------------------------------- "

    $choix = Read-Host "Entrez votre choix"
    switch ($choix) {
        q {
            Clear-Host
        }
######### SSH #########
        1 {
            # Demande le nom du PC distant une seule fois
            $PCcommande = Read-Host "Nom du PC"

            # Boucle jusqu'à ce que l'utilisateur appuie sur 'q'
            do {
                # Demande à l'utilisateur la commande à exécuter sur le PC distant
                $commande = Read-Host "Commande à exécuter (appuyez sur q pour quitter)"
    
                # Vérifie si l'utilisateur veut quitter
                if ($commande -eq 'q') {
                    break
                }
    
                # Exécute la commande sur le PC distant
                Invoke-Command -ComputerName $PCcommande -ScriptBlock {
                    param ($commandeInterne)
                    # Exécute la commande et affiche le résultat
                    Invoke-Expression $commandeInterne
                } -ArgumentList $commande
    
                } while ($true)

        Pause | Clear-Host
        }
######### ping ########
        2 {
            ipconfig /all
            pause | Clear-Host
        }
######### ping #########
        3 {
            $ping = Read-Host "Quel est l'adresse IP/nom de pc a ping"
            ping $ping
            pause | Clear-Host
        }
######### nslookup #########
        4 {
            $nslookup = Read-Host "Quel est l'adresse IP/Nom DNS"
            nslookup $nslookup
            pause | Clear-Host
        }
######### gpupdate #########
        5 {
            $gpupdate = Read-Host "Quel PC a executer les GPO"
            Invoke-GPUpdate -Computer $gpupdate -RandomDelayInMinutes 0
            pause | Clear-Host
        }
######### Traceroute #########
        6 {
            $TraceRT = Read-Host "Quel est l'adresse IP a tracer"
            tracert $TraceRT
            pause | Clear-Host
        }
######### IP Scanner #########
        7 {
            $adresseIPBase = Read-Host "quel est l'adresse ip a scanner (ex: 192.168.0.)"
            for ($i = 1; $i -le 255; $i++) {
                $adresseIP = $adresseIPBase + $i
                $resultatTest = Test-Connection -ComputerName $adresseIP -Count 1 -ErrorAction SilentlyContinue
                Write-Output "Test de connexion à $adresseIP : $($resultatTest.StatusCode)"
                }
            pause | Clear-Host
            }
######### Diagnistique réseau #########
        8 {
            Write-Host "ping 8.8.8.8"
            Test-Connection 8.8.8.8
            pause
            Test-Connection google.com
            pause
            nslookup fabebook.com 8.8.8.8
            pause | Clear-Host
        }

######### partie Active directory #########
        9 {
            #Add-WindowsCapability -Online -Name 'Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0'
           do {
                Clear-Host
                Write-Output $poulpe
                Write-Output " ------------------------------------- "
                Write-Output "| Veuillez choisir un numéro :        |"
                Write-Output " ------------------------------------- "
                Write-Output "|     menu : ACTIVE DIRECTORY         |"
                Write-Output " ------------------------------------- "
                Write-Output "| 1. Gérer un Utilisateur             |"
                Write-Output "| 2. Gérer un Groupe                  |"
                Write-Output "| 3. Gérer un PC                      |"
                Write-Output "| 4. Etat replication AD              |"
                Write-Output " ------------------------------------- "
                Write-Output "| q. Retour                           |"
                Write-Output " -------------------------------------"

                $choix1 = Read-Host "Entrez votre choix"

                switch ($choix1) {
                    q {
                        #Remove-WindowsCapability -Online -Name 'Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0'
                        Write-Output "Retour"
                    }
                    1 {
                        do {
                            $nomuserRecherche = Read-Host "Entrez le nom de famille de l'utilisateur (ou 'q' pour quitter)"
                        
                            if ($nomuserRecherche -eq 'q') {
                                Write-Output "Recherche annulée. Sortie du script."
                                break
                            }
                        
                            $userRecherche = Get-ADUser -Filter {sn -eq $nomuserRecherche} -Property SamAccountName
                        
                            if ($userRecherche) {
                                Write-Output "Le SamAccountName de $nomuserRecherche est : $($userRecherche.SamAccountName)"
                                break
                            } else {
                                Write-Output "Utilisateur avec le nom de famille '$nomuserRecherche' non trouvé. Veuillez réessayer."
                            }
                        
                        } while ($true)
                        
                        $nomUser1 = read-host "Entrer le nom de l'utilisateur"
                        do {
                            Clear-Host
                            Write-Output $poulpe
                            Write-Output " --------------------------------------"
                            Write-Output "| Veuillez choisir un numéro :        |"
                            Write-Output " -------------------------------------- "
                            Write-Output "|         menu : $nomUser1            |"
                            Write-Output " -------------------------------------- "
                            Write-Output "| 1. Voir les infos de $nomUser1      |"
                            Write-Output "| 2. Voir les groupes de $nomUser1    |"
                            Write-Output "| 3. Ajouter $nomUser1 a un groupe    |"
                            Write-Output "| 4. Supprimer $nomUser1 d'un groupe  |"
                            Write-Output "| 5. Déplacer $nomUser1 dans l'ad     |"
                            Write-Output "| 6. Reset le PWD de $nomUser1        |"
                            Write-Output " -------------------------------------- "
                            Write-Output "| q. Retour                           |"
                            Write-Output " --------------------------------------"

                            $choix1_1 = Read-Host "Entrez votre choix"

                            switch ($choix1_1) {
                                q {
                                    Write-Output "Retour"
                                }
                                1 {
                                    Get-ADUser -Identity $nomUser1 -Properties * | Select-Object EmailAddress, wWWHomePage, SAMAccountName, PasswordLastSet, PasswordExpired, Department, Description, DisplayName, DistinguishedName, whenCreated, Enabled
                                    pause | Clear-Host
                                }
                                2 {
                                    #$GroupeNomUser1 = $nomUser1
                                    Get-ADUser -Identity $nomUser1 -Property MemberOf | Select-Object -ExpandProperty MemberOf | ForEach-Object { ($_ -split ',')[0] -replace '^CN=' }
                                    pause | Clear-Host
                                }
                                3 {
                                    $groupeADadd1_1 = Read-Host "quel est le groupe a ajouter"
                                    Write-Output "Ajout de $nomUser1 dans le groupe $groupeADadd1_1..."
                                    Add-ADGroupMember -Identity $groupeADadd1_1 -Members $nomUser1
                                    Start-Sleep -Seconds 1
                                    Write-Output "$nomUser1 a été ajouter au groupe $groupeADadd1_1"
                                    pause | Clear-Host
                                }
                                4 {
                                    Get-ADUser -Identity $nomUser1 -Property MemberOf | Select-Object -ExpandProperty MemberOf | ForEach-Object { ($_ -split ',')[0] -replace '^CN=' }
                                    $groupeADdelet1_1 = Read-Host "quel est le groupe a supprimer"
                                    Write-Output "Suppression de $nomUser1 du groupe $groupeADdelet1_1..."
                                    Remove-ADGroupMember -Identity $groupeADdelet1_1 -Members $nomUser1
                                    Start-Sleep -Seconds 1
                                    Write-Output "$nomUser1 à été supprimer du groupe $groupeADdelet1_1"
                                    pause | Clear-Host
                                }
                                5 {
                                    $NomOU5 = Read-Host "Quel est la nouvelle OU de l'agent"
                                    $nom5 = Get-ADUser $nomUser1
                                    Move-ADObject -Identity $Nom5 -TargetPath $NomOU5
                                    Write-Output = "$nomUser1 a été déplacer ici : $NomOU5"
                                    pause | Clear-Host
                                }
                                6{
                                    Set-ADAccountPassword -Identity $nomUser1 -Reset
                                    Set-ADUser -Identity $nomUser1 -ChangePasswordAtLogon $true
                                    Write-Output "le mot de passe de $nomUser1 a été reset"
                                    pause | Clear-Host
                                }
                                default1_1 {
                                    Write-Output "Choix invalide!"
                                    Start-Sleep -Seconds 1
                                }
                            }
                        } while ($choix1_1 -ne "q")
                        Clear-Host
                    }
                    2 {
                        $nomGroupe1 = Read-Host "Quel est le groupe a gerer"
                        do {
                            Clear-Host
                            Write-Output $poulpe
                            Write-Output " ---------------------------------------"
                            Write-Output "| Veuillez choisir un numéro :          |"
                            Write-Output " --------------------------------------- "
                            Write-Output "|         menu : $nomGroupe1            |"
                            Write-Output " -------------------------------------- "
                            Write-Output "| 1. Voir les users de $nomGroupe1      |"
                            Write-Output "| 2. Ajouter un users dans $nomGroupe1  |"
                            Write-Output "| 3. Supprimer un users dans $nomGroupe1|"
                            Write-Output " --------------------------------------- "
                            Write-Output "| q. Retour                             |"
                            Write-Output " ---------------------------------------"

                            $choix1_2 = Read-Host "Entrez votre choix"

                            switch ($choix1_2) {
                                q {
                                    Write-Output "Retour"
                                }
                                1 {
                                    Get-ADGroupMember -Identity $nomGroupe1 | Select-Object name
                                    pause | Clear-Host
                                }
                                2 {
                                    $nomuserAdd1_2 = Read-Host "quel est l'utilisateur a ajouter"
                                    Add-ADGroupMember -Identity $nomGroupe1 -Members $nomuserAdd1_2
                                    Write-Output "$nomuserAdd1_2 a été ajouter au groupe $nomGroupe1"
                                    pause | Clear-Host
                                }
                                3 {
                                    $nomuserDelet1_2 = Read-Host "quel est l'utilisateur a supprimer"
                                    Remove-ADGroupMember -Identity $nomGroupe1 -Members $nomuserDelet1_2
                                    Write-Output "$nomuserDelet1_2 à été supprimer du groupe $nomGroupe1"
                                    pause | Clear-Host
                                }
                                default1_2 {
                                    Write-Output "Choix invalide!"
                                    Start-Sleep -Seconds 1
                                }
                            }
                        } while ($choix1_2 -ne "q")
                    Clear-Host
                    }
                    3 {
                        $nomPC1 = Read-Host "Quel est le PC a gerer"
                        do {
                            Clear-Host
                            Write-Output $poulpe
                            Write-Output " --------------------------------------- "
                            Write-Output "| Veuillez choisir un numéro :          |"
                            Write-Output " --------------------------------------- "
                            Write-Output "|         menu : $nomPC1                |"
                            Write-Output " --------------------------------------- "
                            Write-Output "| 1. Voir les info de $nomPC1           |"
                            Write-Output "| 2. Déplacer $nomPC1 dans l'ad         |"
                            Write-output "| 3. Voir le mot de passe de $nomPC1    |"
                            Write-Output " --------------------------------------- "
                            Write-Output "| q. Retour                             |"
                            Write-Output " --------------------------------------- "

                            $choix1_3 = Read-Host "Entrez votre choix"

                            switch ($choix1_3) {
                                q {
                                    Write-Output "Retour"
                                }
                                1 {
                                    Get-ADComputer $nomPC1
                                    pause | Clear-Host
                                }
                                2{
                                    $NomOUPC2 = Read-Host "Quel est la nouvelle OU de l'agent"
                                    $nomPC2 = Get-ADComputer $nomPC1
                                    Move-ADObject -Identity $nomPC2 -TargetPath $NomOUPC2
                                    Write-Output = "$nomPC1 a été déplacer ici : $NomOUPC2"
                                    pause | Clear-Host
                                }
                                3{
                                    $passwordPC1= Get-AdmPwdPassword -ComputerName $nomPC1 | Select-Object password 
                                    Write-Host "Le mot de passe est" $passwordPC1
                                    pause | Clear-Host
                                }
                                default1_3 {
                                    Write-Output "Choix invalide!"
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
                        Write-Output "Choix invalide!"
                        Start-Sleep -Seconds 1
                    }
                }
            } while ($choix1 -ne "q")

           Clear-Host
        }
        default {
            Write-Output "Choix invalide!"
            Start-Sleep -Seconds 1 | Clear-Host
        }

######### partie WSUS #########

        10 {
           do {
                Clear-Host
                Write-Output $poulpe
                Write-Output " ------------------------------------- "
                Write-Output "| Veuillez choisir un numéro :        |"
                Write-Output " ------------------------------------- "
                Write-Output "|         menu : WSUS                 |"
                Write-Output " ------------------------------------- "
                Write-Output "| 1. Reset la conf du WSUS            |"
                Write-Output "| 2. Reset la conf du WSUS à distance |"
                Write-Output " ------------------------------------- "
                Write-Output "| q. Retour                           |"
                Write-Output " -------------------------------------"

                $choix2 = Read-Host "Entrez votre choix"

                switch ($choix2) {
                    q {
                        Write-Output "Retour"
                    }
                    1 {
                        Stop-Service -Name wuauserv
                        #supprime le dossier SoftwareDistribution
                        Remove-Item "C:\Windows\SoftwareDistribution" -Recurse
                        Write-Output "supprimer"
                        #va dans regedit en ligne de commande
                        Set-Location HKLM:
                        #supprime la clé de registre SusClientId
                        Remove-ItemProperty -Path "\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" -Name "SusClientId"
                        #démarre le service wuauserv
                        Start-Service -Name wuauserv
                        #reset les conf de windows update
                        wuauclt /resetauthorization /detectnow
                        wuauclt /reportnow
                        #retoune dans le C:
                        c:
                        #export les log de windows update
                        Get-WindowsUpdateLog
                        pause | Clear-Host
                    }
                    2 {
                        $PCWSUS = Read-Host "quel est le PC a connecter au WSUS"
                        Invoke-Command -ScriptBlock {
                            $pcwsusservice = "wuauserv"
                            Write-Output "Arret du service $pcwsusservice"
                            Stop-Service -Name $pcwsusservice
                            Start-Sleep -Seconds 1
                            #supprime le dossier SoftwareDistribution
                            $PCWSUSdossier = "C:\Windows\SoftwareDistribution"
                            Write-Output "suppression de $PCWSUSdossier"
                            Remove-Item $PCWSUSdossier -Recurse
                            Start-Sleep -Seconds 1
                            #va dans regedit en ligne de commande
                            Set-Location HKLM:
                            #supprime la clé de registre
                            $pcwsusregistre = "SusClientId"
                            Write-Output "suppression de la clé de registre $pcwsusregistre"
                            Remove-ItemProperty -Path "\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" -Name SusClientId
                            Start-Sleep -Seconds 1
                            #démarre le service wuauserv
                            Write-Output "Démarrage du service $pcwsusservice"
                            Start-Service -Name $pcwsusservice
                            Start-Sleep -Seconds 1
                            #reset les conf de windows update
                            Write-Output "rénistialisation de la conf de windows update"
                            wuauclt /resetauthorization /detectnow
                            wuauclt /reportnow
                            Start-Sleep -Seconds 1
                            #retoune dans le C:
                            c:
                            #export les log de windows update
                            Write-Output "Exportation des logs de windows update"
                            Get-WindowsUpdateLog
                            Start-Sleep -Seconds 1
                            #met a jour les GPO
                            Write-Output "mise a jours des GPO"
                            gpupdate /force
                            Start-Sleep -Seconds 1
                        } -ComputerName $PCWSUS
                        pause | Clear-Host
                    }
                    default2 {
                        Write-Output "Choix invalide!"
                        Start-Sleep -Seconds 1
                    }
                }
            } while ($choix2 -ne "q")
            Clear-Host
        }

        default2 {
            Write-Output "Choix invalide!"
            Start-Sleep -Seconds 1 | Clear-Host
        } 

        11{
            function Send-WakeOnLan {
                param ([string] $macAddress = (Read-Host "Saisir l'adresse MAC de l'ordinateur cible"))
            
                $macBytes = $macAddress -split '[:-]' | ForEach-Object { [byte]('0x' + $_) }
            
                if ($macBytes.Length -ne 6) {
                    throw 'MAC invalide'
                }
                $wolPacket = [byte[]](, 0xFF * 6) + ($macBytes * 16)
                $udpClient = New-Object System.Net.Sockets.UdpClient
                $udpClient.Connect(([System.Net.IPAddress]::Broadcast), 4000)
                [void]$udpClient.Send($wolPacket, $wolPacket.Length)
                Write-Host "Paquet Magic envoyÃ© Ã  $macAddress"
                Start-Sleep -Seconds 1

                $udpClient.Close()
            }
            Send-WakeOnLan
            Pause | Clear-Host
        }

        12 {
            
            $testnomUser1 = Read-Host coucou
            Get-ADUser -Identity $testnomUser1 -Property MemberOf | Select-Object -ExpandProperty MemberOf | ForEach-Object { ($_ -split ',')[0] -replace '^CN=' }

        }

    }
} while ($choix -ne "q")
Clear-Host