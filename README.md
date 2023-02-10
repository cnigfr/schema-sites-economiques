# Schema des Zones d'activites économiques (ZAE) issu du GT CNIG Aménagement
Dépot des documents et travaux du sous-groupe de travail ZAE pour l'élaboration du géostandard CNIG ZAE

## Géostandard CNIG ZAE

Le géostandard CNIG ZAE est en cours d'élaboration 

Il sera publié sur la page des ressources du GT Aménagement.

## Contexte

- Une ZAE est réservée à l’implantation d’entreprises. Elle réunit les pouvoirs publics, les collectivités et les entreprises dans une logique partenariale autour d’objectifs de croissance.

  - Elle est en général placée sous le régime juridique du permis d'aménager ou d'une zone d'aménagement concerté (ZAC).
  - On dénombre un peu plus de 30 000 ZAE couvrant environ 500 000 ha du territoire national.
  - Depuis la loi NOTRe, **les ZAE relèvent de la compétence de l’EPCI**.

- La Loi Climat et Résilience impose de lutter contre le phénomène d'artificialisation des sols pour apporter une partie de réponse aux enjeux liés au changement climatique, avec des objectifs ciblés et intégrés dans les documents de planification et d’urbanisme. L'[article 191](https://www.legifrance.gouv.fr/jorf/article_jo/JORFARTI000043957220) engage à réduire de moitié le rythme de consommation des espaces naturels, agricoles et forestiers (NAF), puis d'atteindre le "zéro artificialisation nette" (ZAN) en 2050. Dans ce contexte, toutes les initiatives de bonne utilisation et de recyclage du foncier économique participent potentiellement à cet objectif.

- Les ministères de l'Industrie et de la transition écologique souhaitent mettre en place le **portail national du foncier économique** en 2023. 

## Cadre juridique

- [L'article 220](https://www.legifrance.gouv.fr/jorf/article_jo/JORFARTI000043957249) de la Loi Climat et Résilience impose de dresser l'inventaire exhaustif des ZAE avant le 22 août 2023, puis sa mise à jour tous les 6 ans, comprenant :
  - l'état parcellaire des unités foncières
  - l’identification des propriétaires et des occupants
  - le taux de vacance de la ZAE, défini à partir des unités foncières inoccupées depuis au moins 2 ans par une activité assujettie à la cotisation foncière des entreprises (CFE).
  
- La directive européenne INSPIRE impose aux autorités publiques de publier sur Internet leurs données environnementales géographiques et de les partager entre elles. Les informations relatives aux ZAE intègrent le **thème 4 "Usage des sols" de l'annexe III de la directive**.

## Finalité
Le sous-groupe ZAE du GT CNIG Aménagement a pour objectif de standardiser l'identification et la caractérisation des Zones d'activites économiques (ZAE), dans le but d'en dresser l'inventaire de façon homogène sur l'ensemble du territoire.

Le GT CNIG Aménagement et ses sous-groupes oeuvre sous mandat de la **[Commission des Standards](http://cnig.gouv.fr/?page_id=640) du Conseil National de l'Information Géolocalisée** (CNIG).

Le **[mandat du Groupe de Travail](http://cnig.gouv.fr/IMG/pdf/230119_mandat_gt_cnig_amenagement.pdf)** a été validé le 19 janvier 2023.

Le GT CNIG Aménagement dispose d'une page dédiée <à créer> sur le site du CNIG.

## Schéma ZAE

Le standard CNIG ZAE fournit une description littérale des champs, non exlusivement technique.

Le fichier [schema.json](https://github.com/cnigfr/Friches/tree/main/schema.json) contient **l'implémentation technique** du modèle conceptuel de données (MCD), au format json.

Ce schéma (ou Modèle Conceptuel de Donées - MCD) modélise les informations relatives aux ZAE. Adopter et respecter ce schéma est une garantie, non seulement d’efficacité et de pertinence des informations collectées, mais aussi d’interopérabilité et de facilité du partage des données.

Il respecte le standard [Table Schema](https://specs.frictionlessdata.io/table-schema/) et <est / sera> référencé sur [schema.data.gouv.fr](https://schema.data.gouv.fr/cnigfr/schema-zones-activites-economiques/). 


## Organisation du dépot

* Le répertoire [documentation](https://github.com/cnigfr/zones-activites-economiques/tree/main/documentation) contient les documents utiles au groupe de travail.
* Le répertoire [réunions](https://github.com/cnigfr/Friches/tree/main/r%C3%A9unions) contient les documents de suivi du groupe de travail : [**présentations et compte-rendus des réunions du groupe**](https://github.com/cnigfr/zones-activites-economiques/blob/main/r%C3%A9unions/README.md).
* Le répertoire [standard](https://github.com/cnigfr/zones-activites-economiques/tree/main/standard) contient le standard CNIG ZAE publié, sous **forme littérale** (.odt et/ou .pdf) avec les rubriques documentaires connexes (contexte, recommandations, métadonnées, etc.).
* Le fichier [schema.json](https://github.com/cnigfr/zones-activites-economiques/tree/main/schema.json) contient **l'implémentation technique** du modèle conceptuel de données (MCD), au format json destiné à être référencé sur schema.data.gouv.fr.

## Informations et participation au groupe de travail
Pour être tenu au courant et/ou participer aux échanges du GT CNIG ZAE, merci de [contacter le CNIG](http://cnig.gouv.fr/spip.php?page=contact). Il est également possible de s'abonner à la [lettre d'information du CNIG](http://cnig.gouv.fr/).

## Contributions
N'hésitez pas à utiliser les [Issues de ce Github](https://github.com/cnigfr/zones-activites-economiques/issues) pour toute expression de besoin, proposition d'amélioration du projet de standard ZAE, retour utilisateur, etc.

## Actualisation
Le projet de standard ZAE, puis le standard une fois validé par le CNIG, évoluera en fonction des évolutions réglementaires et de l'expression des besoins de la communauté des utlisateurs.

Les ressources associées et les bases de données correspondantes seront actualisées conformément au standard CNIG ZAE.
Les mises à jour de base de données sont effectuées en modifiant le cas échéant les données qui y figurent déjà.

## OpenData - Données ouvertes

Les données relatives à l'identification et la caractérisation des Zones d'activites économiques sont ouvertes et sont à la disposition de tous.

Elles seront publiées sur https://www.data.gouv.fr

## Nous contacter

Pour contacter le GT CNIG ZAE, n’hésitez pas à nous écrire à l’adresse suivante : cnig [at] cnig.fr

Toutes les contributions sont les bienvenues !

## Licence
Les travaux du GT CNIG ZAE sont réalisés sous [Licence Ouverte Etalab 2.0](https://www.etalab.gouv.fr/licence-ouverte-open-licence/)

