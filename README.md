# Projet 4 – Infrastructure réseau et système multi-services

## Objectif du projet
Ce projet a pour objectif de concevoir, déployer et administrer une infrastructure réseau et système complète dans un environnement de test proche d’un contexte professionnel.  
Il met en œuvre des services réseau, systèmes et applicatifs, tout en intégrant des mécanismes de sécurité, de supervision et d’administration à distance.

---

## Architecture de l’infrastructure
L’infrastructure repose sur un environnement virtualisé intégrant les éléments suivants :

- un routeur pare-feu pfSense assurant la gestion des flux réseau (WAN / LAN, DHCP)
- un serveur Linux NethServer 7.9
- un poste client Windows virtualisé
- plusieurs services systèmes et applicatifs internes

Schéma de la topologie réseau :

![Diagramme de la topologie réseau](docs/diagrams/infra.png)

Cette architecture permet de disposer d’une infrastructure fonctionnelle, sécurisée et administrable, adaptée à un environnement professionnel.

---

## Mise en œuvre technique

### Réseau et sécurité
Le réseau est structuré autour d’un routeur pfSense configuré pour :
- la séparation des réseaux WAN et LAN
- l’attribution des adresses IP via DHCP
- le filtrage des flux réseau
- l’accès sécurisé à Internet

Un plan d’adressage IP cohérent est défini afin d’assurer la stabilité et la lisibilité de l’infrastructure.

### Systèmes et administration
Un serveur NethServer 7.9 est installé et configuré afin de fournir des services systèmes et applicatifs.  
L’administration du serveur est réalisée à distance via SSH (PuTTY), permettant une gestion sécurisée et efficace.

Un poste client Windows est déployé afin de tester l’accès aux services et de valider le bon fonctionnement de l’infrastructure.

### Services d’infrastructure et applicatifs
Les services suivants sont installés et configurés :

- Active Directory pour la gestion des utilisateurs et des droits
- MariaDB pour la gestion des bases de données
- GLPI pour la gestion de parc informatique
- Nextcloud pour le partage et la collaboration
- un serveur Web
- Zabbix pour la supervision de l’infrastructure

Ces services permettent de couvrir les besoins essentiels d’un système d’information d’entreprise.

### Supervision et exploitation
La solution de supervision Zabbix est mise en place afin de :
- surveiller l’état des équipements et des services
- vérifier la disponibilité des ressources
- identifier et corriger les dysfonctionnements réseau ou système

Cette supervision contribue à garantir la fiabilité et la continuité de service de l’infrastructure.

---

## Compétences mobilisées (BTS SIO – Option SISR)

- Administrer et sécuriser des réseaux et des systèmes  
  (Bloc 2 : Administration des systèmes et des réseaux)

- Installer, configurer et exploiter des serveurs Linux et Windows  
  (Bloc 2 : Administration des systèmes et des réseaux)

- Mettre en place et administrer des services d’infrastructure et applicatifs  
  (Bloc 1 : Support et mise à disposition de services informatiques)

- Déployer et exploiter une solution de supervision  
  (Bloc 2 : Administration des systèmes et des réseaux)

- Virtualiser et déployer une infrastructure multi-machines cohérente  
  (Bloc 2 : Administration des systèmes et des réseaux)

- Produire une documentation technique structurée et exploitable  
  (Bloc 1 : Support et mise à disposition de services informatiques)

Ce projet démontre la capacité à concevoir, déployer, sécuriser et exploiter une infrastructure réseau et système complète, en respectant les bonnes pratiques professionnelles et les attendus du BTS SIO option SISR.

---

Rafael GAVERIAUX PEREIRA  
BTS SIO – Option SISR