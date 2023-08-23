## schema-site-economique

Standard CNIG Site Economique

Spécification du fichier d'échange conforme au standard CNIG Site Economique pour la classe POLE-ECO : Pôle économique 

- Schéma créé le : 08/22/23
- Site web : https://github.com/cnigfr/schema-zones-activites-economiques
- Version : v1.0.0
- Valeurs manquantes : `""`, `"NA"`, `"NaN"`, `"N/A"`
- Clé primaire : `pole_id`

### Modèle de données


##### Liste des propriétés

| Propriété | Type | Obligatoire |
| -- | -- | -- |
| [pole_id](#identifiant---propriété-pole_id) | chaîne de caractères  | Oui |
| [pole_nom](#nom---propriété-pole_nom) | chaîne de caractères  | Oui |
| [pole_vocadomi](#vocation-dominante---propriété-pole_vocadomi) | chaîne de caractères  | Oui |
| [pole_identif_date](#date-d'identification---propriété-pole_identif_date) | date (format `%Y-%m-%d`) | Oui |
| [pole_actu_date](#date-de-dernière-actualisation---propriété-pole_actu_date) | date (format `%Y-%m-%d`) | Non |
| [pole_nb_etab](#nombre-d'établissements---propriété-pole_nb_etab) | nombre entier  | Non |
| [pole_nb_emploi](#nombre-d'emploi---propriété-pole_nb_emploi) | nombre entier  | Non |
| [pole_surface](#surface----propriété-pole_surface) | nombre entier  | Non |
| [pole_geompoint](#localisation---propriété-pole_geompoint) | chaîne de caractères  | Oui |
| [pole_rayonnement](#rayonnement----propriété-pole_rayonnement) | chaîne de caractères  | Non |

#### identifiant - Propriété `pole_id`

> *Description : identifiant du pôle économique défini dans le standard CNIG Site Economique<br/>Ex : 44003_POLE-ECO_00162*
- Valeur obligatoire
- Type : chaîne de caractères

#### nom - Propriété `pole_nom`

> *Description : nom usuel du pôle économique<br/>Ex : Apt activités*
- Valeur obligatoire
- Type : chaîne de caractères

#### vocation dominante - Propriété `pole_vocadomi`

> *Description : vocation dominante du pôle économique, issue de la vocation dominante des sites économiques le constituant.<br/>Ex : mixte à dominante industrielle*
- Valeur obligatoire
- Type : chaîne de caractères
- Valeurs autorisées : 
    - mixte à dominante commerciale
    - mixte à dominante logistique
    - mixte à dominante industrielle
    - mixte à dominante tertiaire

#### date d'identification - Propriété `pole_identif_date`

> *Description : date d'identification du pôle économique<br/>Ex : 2016-03-26*
- Valeur obligatoire
- Type : date (format `%Y-%m-%d`)

#### date de dernière actualisation - Propriété `pole_actu_date`

> *Description : date de dernière actualisation des informations sur le pôle économique.<br/>Ex : 2022-08-22*
- Valeur optionnelle
- Type : date (format `%Y-%m-%d`)

#### nombre d'établissements - Propriété `pole_nb_etab`

> *Description : nombre d'établissements du pôle économique<br/>Ex : 38*
- Valeur optionnelle
- Type : nombre entier

#### nombre d'emploi - Propriété `pole_nb_emploi`

> *Description : nombre total d'emplois du pôle économique<br/>Ex : 1152*
- Valeur optionnelle
- Type : nombre entier

#### surface  - Propriété `pole_surface`

> *Description : somme des surfaces des sites économiques constituant le pôle<br/>Ex : 21*
- Valeur optionnelle
- Type : nombre entier

#### localisation - Propriété `pole_geompoint`

> *Description : coordonnées géographiques du centroïde du pôle économique au format WKT<br/>Ex : POINT(49.2527 3.9815)*
- Valeur obligatoire
- Type : chaîne de caractères

#### rayonnement  - Propriété `pole_rayonnement`

> *Description : rayonnement du pôle économique<br/>Ex : régional*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - international
    - national
    - régional
    - local
