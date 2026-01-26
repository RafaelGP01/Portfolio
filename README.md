# Présentation du projet 

Dans ce projet, j’ai mis en place une solution complète de gestion de parc informatique en utilisant la virtualisation et la conteneurisation. J’ai installé un serveur GLPI conteneurisé via Docker Compose sur un Mac Apple Silicon, en y associant une base de données MariaDB. J’ai ensuite créé deux machines virtuelles Ubuntu Server sous VMware Fusion, configurées en mode réseau pont afin qu’elles disposent d’adresses IP sur le réseau local. Sur ces machines, j’ai installé et configuré les agents GLPI afin de permettre la remontée automatique des informations d’inventaire vers le serveur. Enfin, j’ai vérifié le bon fonctionnement de l’ensemble en contrôlant l’apparition des machines dans l’interface GLPI, validant ainsi la communication réseau, le déploiement des services et l’exploitation de la solution de gestion de parc.

## Compétences Exploités 

1. Administrer des systèmes virtualisés

Installation et configuration d’un environnement de virtualisation sur Mac Apple Silicon avec VMware Fusion

Création et administration de machines virtuelles Linux (Ubuntu Server ARM64)

Gestion des ressources (CPU, mémoire, réseau)

Mise à jour et maintenance des systèmes Linux

Compétence démontrée :
Capacité à déployer et administrer des systèmes virtualisés dans un environnement hétérogène.

2. Déployer des services applicatifs avec la conteneurisation

Installation et utilisation de Docker Desktop

Déploiement d’une application métier (GLPI) via Docker Compose

Mise en place d’une architecture multi-conteneurs :

GLPI

Base de données MariaDB

Gestion des volumes persistants et des réseaux Docker

Accès au service via un port exposé

Compétence démontrée :
Capacité à déployer et exploiter un service applicatif à l’aide de technologies de conteneurisation.

3. Mettre en place et exploiter une solution de gestion de parc informatique

Installation et configuration de GLPI

Déploiement et configuration des agents GLPI sur des machines Linux

Configuration de la remontée d’inventaire vers le serveur GLPI

Vérification et exploitation des données d’inventaire matériel et logiciel

Compétence démontrée :
Capacité à mettre en œuvre une solution de gestion de parc et à automatiser l’inventaire des équipements.

4. Administrer et configurer des services réseau

Configuration réseau des machines virtuelles en mode pont (Bridged)

Attribution et vérification des adresses IP

Communication réseau entre le serveur GLPI et les agents

Vérification du bon fonctionnement des flux réseau

Compétence démontrée :
Capacité à configurer un environnement réseau fonctionnel permettant la communication entre services et équipements.