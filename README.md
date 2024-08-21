# README - Script PowerShell : Outil de Gestion Réseau et Système

## Description

Ce script PowerShell est conçu pour automatiser et simplifier diverses tâches d'administration réseau et système, telles que la gestion de connexions SSH, l'exécution de diagnostics réseau, la gestion d'utilisateurs Active Directory, et bien plus encore. Il est interactif et basé sur un menu permettant de sélectionner des options spécifiques selon les besoins.

## Fonctionnalités

Le script présente les fonctionnalités suivantes :

### 1. Connexion SSH
- Permet de se connecter à un ordinateur distant via SSH et d'exécuter des commandes à distance de manière répétée jusqu'à ce que l'utilisateur décide de quitter.

### 2. Afficher la Configuration IP
- Exécute la commande `ipconfig /all` pour afficher toutes les configurations IP de la machine.

### 3. Ping
- Permet de pinguer une adresse IP ou un nom de machine pour tester la connectivité réseau.

### 4. nslookup
- Effectue une recherche DNS (Domain Name System) pour une adresse IP ou un nom DNS donné.

### 5. Mise à Jour des Politiques de Groupe (gpupdate /force)
- Exécute une mise à jour forcée des politiques de groupe sur un ordinateur spécifié.

### 6. Tracert
- Effectue un tracé de la route (traceroute) vers une adresse IP spécifiée pour diagnostiquer les chemins de réseau.

### 7. Scan de Réseau
- Scanne un sous-réseau pour vérifier la disponibilité des adresses IP dans une plage spécifiée.

### 8. Diagnostic Réseau Rapide
- Effectue des tests de connectivité réseau basiques (ping, DNS lookup) pour diagnostiquer les problèmes courants.

### 9. Active Directory
- Offre des outils pour gérer les utilisateurs, les groupes, et les ordinateurs dans Active Directory :
  - Gérer un utilisateur : Afficher les informations, gérer les groupes, réinitialiser le mot de passe, etc.
  - Gérer un groupe : Voir les membres, ajouter/supprimer des utilisateurs dans un groupe.
  - Gérer un ordinateur : Voir les informations, déplacer dans l'AD, etc.
  - Vérifier l'état de la réplication AD.

### 10. WSUS (Windows Server Update Services)
- Réinitialise les configurations WSUS sur un serveur local ou à distance.

### 11. Wake on LAN
- Envoie un paquet Magic pour réveiller une machine à partir de son adresse MAC.

## Utilisation

Pour exécuter le script, ouvrez une console PowerShell avec les privilèges administratifs et exécutez-le. Le script affichera un menu interactif où vous pourrez sélectionner les actions souhaitées en entrant le numéro correspondant.

### Exécution

1. **Lancer le script** : `.\NomDuScript.ps1`
2. **Choisir une option** : Entrez le numéro correspondant à l'action souhaitée et suivez les instructions à l'écran.
3. **Quitter le script** : Entrez `q` pour quitter à tout moment.

## Prérequis

- **PowerShell** : Assurez-vous d'avoir PowerShell installé sur votre machine.
- **Privilèges Administratifs** : Certaines fonctionnalités nécessitent des droits administratifs.
- **Modules PowerShell** : Certains modules comme `ActiveDirectory` sont requis pour des fonctionnalités spécifiques. Assurez-vous qu'ils sont installés et disponibles.

## Avertissement

Ce script effectue des opérations sur des systèmes en production, telles que des mises à jour de configuration réseau et des modifications d'Active Directory. Utilisez-le avec précaution, en particulier dans des environnements sensibles.

---

**Auteur** : CyberPoulpe  

---

Ce document peut être modifié pour s'adapter aux évolutions du script ou aux besoins spécifiques de l'utilisateur.
