# Schéma du standard Site Economique

**L'implémentation technique** du modèle conceptuel de données (MCD) est décrite ici suivant le standard **Tableschema** et le format **json**, elle référencée sur [schema.data.gouv.fr](https://schema.data.gouv.fr/schemas.html?q=&label=CNIG).

- Le Datapackage contient les quatre schémas : [pole-eco](https://github.com/cnigfr/zones-activites-economiques/tree/main/schema/pole-eco), [site-eco](https://github.com/cnigfr/zones-activites-economiques/tree/main/schema/site-eco), [terrain-eco](https://github.com/cnigfr/zones-activites-economiques/tree/main/schema/terrain-eco), [etablissement](https://github.com/cnigfr/zones-activites-economiques/tree/main/schema/etablissement)

En outre _(et merci à [@Doctor-Who](https://github.com/Doctor-Who)_ pour ces ressources) :

- Chaque répertoire contient une requête SQL de création des différentes classes d'objets au format PostGreSQL/PostGIS. Elles définissent le type exact de chaque champ, si les valeurs _NULL_ sont autorisées ou non ainsi que les commentaires associés.

- Le GeoPackage `sites_economiques.gpkg` contient les 4 couches du standard pour **QGIS** (testé avec QGIS LTR 3.28).
  - Spécificités : terrain-eco est proposé uniquement en polygone simple car le format ne gère pas plusieurs géométries contrairement à PostGIS.
  - MAJ du 19/01/2024 : le GeoPackage contient à présent des formulaires de saisie (liste déroulante, case à cocher, calendrier, etc.).
