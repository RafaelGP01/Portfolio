# Gestion de parc informatique – GLPI, virtualisation et conteneurisation

## Objectif du projet
Ce projet a pour objectif de mettre en œuvre une solution complète de gestion de parc informatique en combinant virtualisation et conteneurisation.  
Il vise à déployer et exploiter l’outil GLPI afin d’automatiser l’inventaire matériel et logiciel de machines virtuelles, tout en validant la communication réseau entre les différents composants de l’infrastructure.

---

## Présentation de l’environnement
L’environnement de travail repose sur les éléments suivants :

- un hôte Mac Apple Silicon
- VMware Fusion pour la virtualisation
- Docker Desktop pour la conteneurisation
- deux machines virtuelles Ubuntu Server (ARM64)
- un serveur GLPI conteneurisé avec une base de données MariaDB

Les machines virtuelles sont configurées en mode réseau pont (Bridged) afin d’obtenir des adresses IP sur le réseau local et de communiquer directement avec le serveur GLPI.

---

## Mise en œuvre technique

### Virtualisation des systèmes
Deux machines virtuelles Ubuntu Server sont créées et administrées sous VMware Fusion.  
Elles sont configurées avec des ressources adaptées (CPU, mémoire, réseau) et maintenues à jour afin de garantir leur stabilité et leur sécurité.

Ces machines constituent les postes inventoriés par la solution de gestion de parc.

### Conteneurisation de l’application GLPI
Le serveur GLPI est déployé sous forme de conteneurs à l’aide de Docker Compose.  
L’architecture mise en place comprend :
- un conteneur GLPI
- un conteneur MariaDB pour la base de données

Les volumes persistants sont configurés afin de conserver les données, et les ports nécessaires sont exposés pour permettre l’accès à l’interface web de GLPI.

### Déploiement des agents GLPI
Les agents GLPI sont installés et configurés sur les machines virtuelles Ubuntu Server.  
Ils permettent la remontée automatique des informations d’inventaire matériel et logiciel vers le serveur GLPI.

Le bon fonctionnement de la solution est validé par l’apparition des machines et de leurs caractéristiques dans l’interface GLPI.

### Configuration et exploitation du réseau
Les machines virtuelles sont configurées en mode pont afin de garantir :
- l’attribution correcte des adresses IP
- la communication réseau entre le serveur GLPI et les agents
- la bonne circulation des flux nécessaires à la remontée d’inventaire

Des vérifications sont effectuées pour s’assurer du bon fonctionnement des échanges réseau.

---

## Compétences mobilisées (BTS SIO – Option SISR)

- Administrer des systèmes virtualisés dans un environnement hétérogène  
  (Bloc 2 : Administration des systèmes et des réseaux)

- Déployer et exploiter des services applicatifs à l’aide de la conteneurisation  
  (Bloc 2 : Administration des systèmes et des réseaux)

- Mettre en œuvre une solution de gestion de parc informatique (GLPI)  
  (Bloc 1 : Support et mise à disposition de services informatiques)

- Configurer et exploiter des services réseau permettant la communication entre systèmes  
  (Bloc 2 : Administration des systèmes et des réseaux)

Ce projet démontre la capacité à combiner virtualisation, conteneurisation et services réseau afin de déployer et exploiter une solution de gestion de parc informatique conforme aux attentes du BTS SIO option SISR.

---

Rafael GAVERIAUX PEREIRA  
BTS SIO – Option SISR