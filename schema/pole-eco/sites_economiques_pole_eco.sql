-- Création de la classe objet POLE-ECO du Standard CNIG Sites Économiques - version 2023-10
DROP TABLE IF EXISTS sites_economiques.pole_eco;
CREATE TABLE sites_economiques.pole_eco (
    pole_id varchar(20) PRIMARY KEY,
    pole_nom varchar NOT NULL,
    pole_vocadomi varchar NOT NULL,
    pole_identif_date char(10) NOT NULL,
    pole_actu_date char(10) NOT NULL,
    pole_nb_site integer,
    pole_nb_etab integer,
    pole_nb_emploi integer,
    pole_surface integer NOT NULL,
    pole_geompoint geometry(Point, 2154),
    pole_rayonnement varchar
);

-- Documentation de la table
COMMENT ON TABLE sites_economiques.pole_eco IS 'Regroupement géographique de sites économiques';

-- Documentation des champs
COMMENT ON COLUMN sites_economiques.pole_eco.pole_id IS 'Identifiant du pôle économique défini dans le standard CNIG Site Économique';
COMMENT ON COLUMN sites_economiques.pole_eco.pole_nom IS 'Nom usuel du pôle économique';
COMMENT ON COLUMN sites_economiques.pole_eco.pole_vocadomi IS 'Vocation dominante du pôle économique, issue de la vocation dominante des sites économiques le constituant';
COMMENT ON COLUMN sites_economiques.pole_eco.pole_identif_date IS 'Date d''identification du pôle économique (Format : %Y-%m-%d)';
COMMENT ON COLUMN sites_economiques.pole_eco.pole_actu_date IS 'Date de dernière actualisation des informations sur le pôle économique (Format : %Y-%m-%d)';
COMMENT ON COLUMN sites_economiques.pole_eco.pole_nb_site IS 'Nombre de sites composant le pôle économique';
COMMENT ON COLUMN sites_economiques.pole_eco.pole_nb_etab IS 'Nombre total d''établissements du pôle économique';
COMMENT ON COLUMN sites_economiques.pole_eco.pole_nb_emploi IS 'Nombre total d''emplois du pôle économique';
COMMENT ON COLUMN sites_economiques.pole_eco.pole_surface IS 'Somme des surfaces (hectares) des sites économiques constituant le pôle';
COMMENT ON COLUMN sites_economiques.pole_eco.pole_geompoint IS 'Coordonnées géographiques du centroïde du pôle économique';
COMMENT ON COLUMN sites_economiques.pole_eco.pole_rayonnement IS 'Rayonnement du pôle économique';
