# Déploiement automatisé d’une infrastructure AWS avec Terraform et Ansible

## Objectif du projet

Ce projet a pour objectif de déployer et configurer automatiquement une infrastructure cloud dans un contexte proche d’un environnement professionnel.

Il vise à mettre en œuvre les principes de **l’Infrastructure as Code (IaC)** afin d’automatiser le déploiement d’une machine distante et sa configuration.

L’infrastructure est créée avec **Terraform** sur **AWS**, puis configurée automatiquement avec **Ansible**.

Le projet met l’accent sur l’automatisation du déploiement, la gestion d’infrastructure cloud et la documentation des actions réalisées.

---

## Environnement technique

<p align="center">
  <img src="docs/diagrams/aws.png" width="180"/>
  <img src="docs/diagrams/terraform.png" width="180"/>
</p>

L’environnement technique utilisé pour ce projet est le suivant :

* Poste client : macOS (Apple Silicon)
* Plateforme cloud : Amazon Web Services (AWS)
* Provisionnement d’infrastructure : Terraform
* Configuration automatique : Ansible
* Automatisation : Bash et Makefile
* Accès distant : SSH
* Versionnement : Git / GitHub

![Plateforme Cloud](docs/png/aws.png)

![Outils de Configuration](docs/png/terraform.png)

---

## Mise en œuvre technique

### Déploiement de l’infrastructure avec Terraform

Terraform est utilisé afin de provisionner l’infrastructure sur AWS.

Les principaux fichiers utilisés sont :

* **main.tf** : définition des ressources AWS (instance EC2, security group)
* **variables.tf** : déclaration des variables utilisées dans le projet
* **outputs.tf** : récupération des informations importantes (adresse IP publique)

Les variables permettent de centraliser les valeurs configurables et d’éviter l’utilisation de données en dur dans la configuration.

L’accès à AWS est configuré avec la commande :

```bash
aws configure
```

Cette commande permet de renseigner les identifiants AWS nécessaires au déploiement de l’infrastructure.

Une fois la configuration réalisée, Terraform permet de créer automatiquement l’instance EC2.

---

### Configuration automatique avec Ansible

Une fois l’infrastructure déployée, Ansible est utilisé afin de configurer automatiquement le serveur distant.

Un script Bash permet de récupérer l’adresse IP publique de l’instance via :

```bash
terraform output
```

Cette adresse IP est ensuite utilisée pour générer automatiquement l’inventaire Ansible.

Exemple d’inventaire généré :

```
[app]
15.237.xxx.xxx ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/terraform
```

Le playbook Ansible est ensuite exécuté afin d’appliquer la configuration souhaitée sur l’instance.

---

### Automatisation avec Makefile

Un **Makefile** est utilisé afin de simplifier l’exécution des différentes étapes du projet.

Les principales commandes sont :

* `make format` : formatage et validation de la configuration Terraform
* `make apply` : déploiement de l’infrastructure AWS
* `make ansible-connection` : génération automatique de l’inventaire Ansible
* `make play` : exécution du playbook Ansible

Cette approche permet d’automatiser et de standardiser le processus de déploiement.

---

### Tests et validation

Les tests suivants sont réalisés afin de valider le bon fonctionnement de l’infrastructure :

* déploiement de l’instance EC2 avec Terraform
* récupération de l’adresse IP publique
* connexion SSH au serveur distant
* génération de l’inventaire Ansible
* exécution du playbook Ansible
* validation du bon fonctionnement de la configuration appliquée

---

## Compétences mobilisées (BTS SIO – Option SISR)

* Installer, tester et déployer une solution d’infrastructure
  (Bloc 1 : Support et mise à disposition de services informatiques)

* Administrer une infrastructure cloud et automatiser son déploiement
  (Bloc 2 : Administration des systèmes et des réseaux)

* Automatiser la configuration d’un système avec des outils d’orchestration
  (Bloc 3 : Exploitation des services informatiques)

* Mettre en œuvre une solution d’administration distante sécurisée (SSH)
  (Bloc 2 : Administration des systèmes et des réseaux)

* Documenter et structurer un projet d’infrastructure
  (Bloc 1 : Support et mise à disposition de services informatiques)


---

Rafael GAVERIAUX
BTS SIO – Option SISR
