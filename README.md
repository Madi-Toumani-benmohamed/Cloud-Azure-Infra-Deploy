# Déploiement d'Infrastructure sur Azure avec Terraform et de Serveur Apache avec Ansible

Ce projet automatise le déploiement d'une infrastructure sur le cloud Azure en utilisant Terraform, puis le déploiement d'un serveur Apache sur cette infrastructure à l'aide de Ansible. Il vise à provisionner des machines virtuelles (VMs) et à y installer Apache pour l'hébergement de sites web ou d'applications.

# Architecture du Projet

Le projet se compose de deux parties principales :

    Terraform : Utilisé pour créer l'infrastructure sur Azure (réseau, sous-réseaux, machines virtuelles, groupes de sécurité, etc.).
    Ansible : Utilisé pour configurer les VMs déployées avec Terraform et installer/configurer Apache.

Prérequis

    Compte Azure :
        Avoir un compte Azure valide et un abonnement.
        Installer et configurer l'outil en ligne de commande Azure CLI.

    Terraform :
        Installer Terraform sur votre machine locale.

    Ansible :
        Installer Ansible sur votre machine locale.

    Clé SSH :
        Générer une clé SSH pour l'accès aux VMs Azure depuis Ansible.
