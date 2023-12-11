-- Création de la classe objet SITE-ECO du Standard CNIG Sites Économiques - version 2023-10
DROP TABLE IF EXISTS sites_economiques.site_eco;
CREATE TABLE sites_economiques.site_eco (
    site_id varchar(20) PRIMARY KEY,
    pole_id varchar(20) NOT NULL,
    site_nom varchar NOT NULL,
    site_type varchar NOT NULL,
    site_vocadomi varchar NOT NULL,
    site_etat varchar NOT NULL,
    site_surf_brute real NOT NULL,
    site_surf_utile real NOT NULL,
    site_creation_date char(4),
    site_identif_date char(10) NOT NULL,
    site_actu_date char(10) NOT NULL,
    site_description text,
    source_producteur varchar,
    site_quali_territoire varchar,
    site_evol_urba varchar,
    site_url text, -- Utilisation du type text pour les URL
    site_epci_nom varchar NOT NULL,
    site_epci_siren char(9) NOT NULL,
    site_comm_nom varchar NOT NULL,
    site_comm_insee char(5) NOT NULL,
    site_moa_type varchar NOT NULL,
    site_moa_nom varchar,
    site_moa_amngt varchar,
    site_moa_comm varchar,
    site_uf_nbre integer,
    site_uf_vacant_nbre integer,
    site_taux_vacance integer,
    site_uf_bati_nbre integer,
    site_nb_etab integer,
    site_nb_emploi integer,
    site_geomsurf geometry(MultiPolygon,2154) NOT NULL,
    site_geompoint geometry(Point,2154),
    site_media text, -- Utilisation du type text pour les URL
    site_surf_comm_dispo real,
    site_surf_projet real,
    site_voca_industrielle char(3),
    site_voca_commerciale char(3),
    site_voca_tertiaire char(3),
    site_voca_artisanale char(3),
    site_voca_touristique char(3),
    site_voca_portuaire char(3),
    site_voca_aeroportuaire char(3),
    reseau_eau_pluviale char(3),
    reseau_eau_potable char(3),
    reseau_assainissement char(3),
    reseau_gaz char(3),
    reseau_electrique char(3),
    reseau_fibre_optique char(3),
    reseau_fret_ferroviaire char(3),
    reseau_fluvial char(3),
    desserte_tc char(3),
    desserte_route_nom varchar,
    autoroute_nom varchar,
    autoroute_echang_dist integer,
    gare_nom varchar,
    gare_dist integer,
    gare_fret_nom varchar,
    gare_fret_dist integer,
    aeroport_nom varchar,
    aeroport_dist integer,
    port_nom varchar,
    port_dist integer
    -- FOREIGN KEY (pole_id) REFERENCES sites_economiques.pole_eco(pole_id) -- Clés étrangères à activer pour renforcer les contraintes relationnelles
);

-- Documentation de la table
COMMENT ON TABLE sites_economiques.site_eco IS 'ZAE et autres sites économiques';

-- Documentation des champs
COMMENT ON COLUMN sites_economiques.site_eco.site_id IS 'Identifiant du site économique (longueur maximale : 20 caractères)';
COMMENT ON COLUMN sites_economiques.site_eco.pole_id IS 'Identifiant de l’éventuel pôle d’appartenance (longueur maximale : 22 caractères)';
COMMENT ON COLUMN sites_economiques.site_eco.site_nom IS 'Nom du site économique';
COMMENT ON COLUMN sites_economiques.site_eco.site_type IS 'Type de site économique';
COMMENT ON COLUMN sites_economiques.site_eco.site_vocadomi IS 'Vocation dominante constatée du site économique';
COMMENT ON COLUMN sites_economiques.site_eco.site_etat IS 'État du site éco. (création, existant, extension)';
COMMENT ON COLUMN sites_economiques.site_eco.site_surf_brute IS 'Superficie totale du site économique en hectare';
COMMENT ON COLUMN sites_economiques.site_eco.site_surf_utile IS 'Surface destinée à accueillir les implantations d''activités en hectare';
COMMENT ON COLUMN sites_economiques.site_eco.site_creation_date IS 'Année de création du site économique (format : %Y)';
COMMENT ON COLUMN sites_economiques.site_eco.site_identif_date IS 'Date d''identification du site économique (format : %Y-%m-%d)';
COMMENT ON COLUMN sites_economiques.site_eco.site_actu_date IS 'Date de dernière actualisation des informations sur le site économique (format : %Y-%m-%d)';
COMMENT ON COLUMN sites_economiques.site_eco.site_description IS 'Commentaire libre contenant des infos descriptives du site économique';
COMMENT ON COLUMN sites_economiques.site_eco.source_producteur IS 'Identification du producteur de la donnée';
COMMENT ON COLUMN sites_economiques.site_eco.site_quali_territoire IS 'Qualification ou labellisation territoriale ou régionale';
COMMENT ON COLUMN sites_economiques.site_eco.site_evol_urba IS 'Type d''urbanisation (extension, renouvellement urbain)';
COMMENT ON COLUMN sites_economiques.site_eco.site_url IS 'URL de la page web descriptive du site économique';
COMMENT ON COLUMN sites_economiques.site_eco.site_epci_nom IS 'Nom de l''EPCI autorité compétente de la ZAE';
COMMENT ON COLUMN sites_economiques.site_eco.site_epci_siren IS 'Code SIREN de l''EPCI autorité compétente de la ZAE (longueur maximale : 9 caractères)';
COMMENT ON COLUMN sites_economiques.site_eco.site_comm_nom IS 'Nom de la commune principale d’implantation du site économique';
COMMENT ON COLUMN sites_economiques.site_eco.site_comm_insee IS 'Code INSEE de la commune principale d’implantation du site économique (longueur maximale : 5 caractères)';
COMMENT ON COLUMN sites_economiques.site_eco.site_moa_type IS 'Type de maîtrise d''ouvrage';
COMMENT ON COLUMN sites_economiques.site_eco.site_moa_nom IS 'Nom de la maîtrise d''ouvrage et/ou gestionnaire du site économique';
COMMENT ON COLUMN sites_economiques.site_eco.site_moa_amngt IS 'Nom de la maîtrise d''ouvrage en charge de l''aménagement';
COMMENT ON COLUMN sites_economiques.site_eco.site_moa_comm IS 'Nom de la maîtrise d''ouvrage en charge la commercialisation';
COMMENT ON COLUMN sites_economiques.site_eco.site_uf_nbre IS 'Nombre d''unités foncières du site économique';
COMMENT ON COLUMN sites_economiques.site_eco.site_uf_vacant_nbre IS 'Nombre d''unités foncières vacantes du site économique';
COMMENT ON COLUMN sites_economiques.site_eco.site_taux_vacance IS 'Taux de vacance de la ZAE suivant l''article L318-8-2 CU';
COMMENT ON COLUMN sites_economiques.site_eco.site_uf_bati_nbre IS 'Nombre d''unités foncières bâties';
COMMENT ON COLUMN sites_economiques.site_eco.site_nb_etab IS 'Nombre d''établissements d''activité économique dans le site économique';
COMMENT ON COLUMN sites_economiques.site_eco.site_nb_emploi IS 'Estimation du nombre d''emplois du site économique';
COMMENT ON COLUMN sites_economiques.site_eco.site_geomsurf IS 'Multi géométries surfaciques du périmètre du site économique (EPSG 2154)';
COMMENT ON COLUMN sites_economiques.site_eco.site_geompoint IS 'Centroïde du site économique (EPSG 2154)';
COMMENT ON COLUMN sites_economiques.site_eco.site_media IS 'URL pointant vers un (des) média(s) : photo, vidéo, etc. du site éco.';
COMMENT ON COLUMN sites_economiques.site_eco.site_surf_comm_dispo IS 'Surface disponible à la commercialisation, en hectare';
COMMENT ON COLUMN sites_economiques.site_eco.site_surf_projet IS 'Surface réservée pour des projets en cours, en hectare';
COMMENT ON COLUMN sites_economiques.site_eco.site_voca_industrielle IS 'Le site comprend (oui / non) au moins une activité industrielle';
COMMENT ON COLUMN sites_economiques.site_eco.site_voca_commerciale IS 'Le site comprend (oui / non) au moins une activité commerciale';
COMMENT ON COLUMN sites_economiques.site_eco.site_voca_tertiaire IS 'Le site comprend (oui / non) au moins une activité tertiaire';
COMMENT ON COLUMN sites_economiques.site_eco.site_voca_artisanale IS 'Le site comprend (oui / non) au moins une activité artisanale';
COMMENT ON COLUMN sites_economiques.site_eco.site_voca_touristique IS 'Le site comprend (oui / non) au moins une activité touristique';
COMMENT ON COLUMN sites_economiques.site_eco.site_voca_portuaire IS 'Le site comprend (oui / non) au moins une activité portuaire';
COMMENT ON COLUMN sites_economiques.site_eco.site_voca_aeroportuaire IS 'Le site comprend (oui / non) au moins une activité aéroportuaire';
COMMENT ON COLUMN sites_economiques.site_eco.reseau_eau_pluviale IS 'Le site est équipé (oui / non) d''un réseau d''eau pluviale';
COMMENT ON COLUMN sites_economiques.site_eco.reseau_eau_potable IS 'Le site est équipé (oui / non) d''un réseau d''eau potable';
COMMENT ON COLUMN sites_economiques.site_eco.reseau_assainissement IS 'Le site est équipé (oui / non) d''un réseau d''assainissement';
COMMENT ON COLUMN sites_economiques.site_eco.reseau_gaz IS 'Le site est équipé (oui / non) d''un réseau de gaz';
COMMENT ON COLUMN sites_economiques.site_eco.reseau_electrique IS 'Le site est équipé (oui / non) d''un réseau électrique';
COMMENT ON COLUMN sites_economiques.site_eco.reseau_fibre_optique IS 'Le site est équipé (oui / non) d''un réseau de fibre optique';
COMMENT ON COLUMN sites_economiques.site_eco.reseau_fret_ferroviaire IS 'Présence (oui / non) d''une Installation Terminale Embranchée (ITE)';
COMMENT ON COLUMN sites_economiques.site_eco.reseau_fluvial IS 'Présence (oui / non) d''un quai fluvial';
COMMENT ON COLUMN sites_economiques.site_eco.desserte_tc IS 'Présence (oui / non) d''une desserte de transport en commun';
COMMENT ON COLUMN sites_economiques.site_eco.desserte_route_nom IS 'Libellé de la desserte routière principale';
COMMENT ON COLUMN sites_economiques.site_eco.autoroute_nom IS 'Libellé de l''autoroute la plus proche';
COMMENT ON COLUMN sites_economiques.site_eco.autoroute_echang_dist IS 'Distance de l''échangeur autoroutier le plus proche';
COMMENT ON COLUMN sites_economiques.site_eco.gare_nom IS 'Nom de la gare de voyageurs la plus proche';
COMMENT ON COLUMN sites_economiques.site_eco.gare_dist IS 'Distance (en km) de la gare de voyageurs la plus proche, par la route';
COMMENT ON COLUMN sites_economiques.site_eco.gare_fret_nom IS 'Nom de la gare de fret la plus proche';
COMMENT ON COLUMN sites_economiques.site_eco.gare_fret_dist IS 'Distance (en km) de la gare de fret la plus proche, par la route';
COMMENT ON COLUMN sites_economiques.site_eco.aeroport_nom IS 'Nom de l''aéroport le plus proche';
COMMENT ON COLUMN sites_economiques.site_eco.aeroport_dist IS 'Distance (en km) de l''aéroport le plus proche, par la route';
COMMENT ON COLUMN sites_economiques.site_eco.port_nom IS 'Nom du port maritime ou fluvial le plus proche';
COMMENT ON COLUMN sites_economiques.site_eco.port_dist IS 'Distance (en km) du port maritime ou fluvial le plus proche, par la route';