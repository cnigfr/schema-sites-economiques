## schema-site-economique

Standard CNIG Site Economique

Spécification du fichier d'échange conforme au standard CNIG Site Economique pour la classe POLE-ECO : Pôle économique 

- Schéma créé le : 08/22/23
- Site web : https://github.com/cnigfr/schema-zones-activites-economiques
- Version : v1.0.0
- Valeurs manquantes : `""`, `"NA"`, `"NaN"`, `"N/A"`
- Clé primaire : `pole_id`

### Modèle de données

|Nom|Type|Description|Exemple|Propriétés|
|-|-|-|-|-|
|pole_id (identifiant)|chaîne de caractères|identifiant du pôle économique défini dans le standard CNIG Site Economique|44003_POLE-ECO_00162|Valeur obligatoire|
|pole_nom (nom)|chaîne de caractères|nom usuel du pôle économique|Apt activités|Valeur obligatoire|
|pole_vocadomi (vocation dominante)|chaîne de caractères|vocation dominante du pôle économique, issue de la vocation dominante des sites économiques le constituant.|mixte à dominante industrielle|Valeur obligatoire, Valeurs autorisées : mixte à dominante commerciale, mixte à dominante logistique, mixte à dominante industrielle, mixte à dominante tertiaire|
|pole_identif_date (date d'identification)|date (format `%Y-%m-%d`)|date d'identification du pôle économique|2016-03-26|Valeur obligatoire|
|pole_actu_date (date de dernière actualisation)|date (format `%Y-%m-%d`)|date de dernière actualisation des informations sur le pôle économique.|2022-08-22|Valeur optionnelle|
|pole_nb_etab (nombre d'établissements)|nombre entier|nombre d'établissements du pôle économique|38|Valeur optionnelle|
|pole_nb_emploi (nombre d'emploi)|nombre entier|nombre total d'emplois du pôle économique|1152|Valeur optionnelle|
|pole_surface (surface )|nombre entier|somme des surfaces des sites économiques constituant le pôle|21|Valeur optionnelle|
|pole_geompoint (localisation)|chaîne de caractères|coordonnées géographiques du centroïde du pôle économique au format geopoint (https://specs.frictionlessdata.io//table-schema/#geopoint)|"3.9815, 49.2527"|Valeur obligatoire|
|pole_rayonnement (rayonnement )|chaîne de caractères|rayonnement du pôle économique|régional|Valeur optionnelle, Valeurs autorisées : international, national, régional, local|
