-- Création de la classe objet TERRAIN-ECO du Standard CNIG Sites Économiques - version 2023-10
DROP TABLE IF EXISTS sites_economiques.terrain_eco;
CREATE TABLE sites_economiques.terrain_eco (
    terr_id varchar(23) PRIMARY KEY,
    site_id varchar(20) NOT NULL,
    terr_refcad varchar,
    terr_surf_brute real NOT NULL,
    terr_utile char(3) NOT NULL,
    terr_identif_date char(10) NOT NULL,
    terr_actu_date char(10) NOT NULL,
    terr_maitrise_fonc varchar NOT NULL,
    terr_stade_amngt varchar NOT NULL,
    terr_stade_comm varchar NOT NULL,
    terr_etat_occup varchar NOT NULL,
    terr_usage varchar NOT NULL,
    terr_url_cartofriches text, -- Utilisation du type text pour les URL
    terr_geomsurf geometry(Polygon, 2154) NOT NULL,
    terr_cle_en_main char(3),
    terr_acquereur varchar,
    terr_cession_date char(10),
    terr_vente_montant integer,
    terr_m2_prix integer
    -- FOREIGN KEY (site_id) REFERENCES sites_economiques.site_eco(site_id) -- Clés étrangères à activer pour renforcer les contraintes relationnelles
);

-- Documentation de la table
COMMENT ON TABLE sites_economiques.terrain_eco IS 'Terrain à vocation économique';

-- Documentation des champs
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_id IS 'Identifiant du terrain à vocation économique';
COMMENT ON COLUMN sites_economiques.terrain_eco.site_id IS 'Identifiant du site où se situe le terrain économique';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_refcad IS 'Liste des identifiants de parcelles cadastrales';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_surf_brute IS 'Superficie brute du terrain économique en hectare';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_utile IS 'Surface à prendre en compte (oui / non) dans le calcul de la surface utile du site';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_identif_date IS 'Date d''identification du terrain économique (Format : %Y-%m-%d)';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_actu_date IS 'Date de dernière actualisation des informations du terrain économique (Format : %Y-%m-%d)';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_maitrise_fonc IS 'Maîtrise foncière majoritaire du terrain économique';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_stade_amngt IS 'Stade d''aménagement du terrain économique';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_stade_comm IS 'Stade de commercialisation du terrain économique';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_etat_occup IS 'État d''occupation du terrain économique';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_usage IS 'Usage du terrain économique';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_url_cartofriches IS 'URL de la friche dans cartofriches (lorsque terr_etat_occup = friche)'
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_geomsurf IS 'Géométrie surfacique du terrain économique';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_cle_en_main IS 'Terrain purgé de tout recours et directement prêt à l''implantation d''activité';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_acquereur IS 'Nom de l''acquéreur du terrain à vocation économique';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_cession_date IS 'Date de la cession (Format : %Y-%m-%d)';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_vente_montant IS 'Montant de la vente';
COMMENT ON COLUMN sites_economiques.terrain_eco.terr_m2_prix IS 'Prix au m²';
