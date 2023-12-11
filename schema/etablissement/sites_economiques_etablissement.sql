-- Création de la classe objet ETABLISSEMENT du Standard CNIG Sites Économiques - version 2023-10
DROP TABLE IF EXISTS sites_economiques.etablissement;
CREATE TABLE sites_economiques.etablissement (
    siret char(14) PRIMARY KEY,
    siren char(9) NOT NULL,
    terr_id varchar(23) NOT NULL,
    ban_id varchar,
    bat_id varchar,
    etab_adresse text,
    etab_raison_sociale varchar NOT NULL,
    etab_nat_juridique char(4) NOT NULL,
    etab_nom varchar NOT NULL,
    epci_nom varchar NOT NULL,
    epci_siren char(9) NOT NULL,
    comm_nom varchar NOT NULL,
    comm_insee char(5) NOT NULL,
    etab_siege char(3) NOT NULL,
    etab_creation_date char(10) NOT NULL,
    etab_identif_date char(10) NOT NULL,
    etab_actu_date char(10) NOT NULL,
    etab_actif char(3) NOT NULL,
    etab_fermeture_date char(10),
    etab_description text,
    etab_activite_code char(10) NOT NULL,
    etab_activite_libelle varchar NOT NULL,
    etab_effectif_code char(3) NOT NULL,
    etab_effectif_libelle varchar NOT NULL,
    etab_effectif_annee char(4) NOT NULL,
    etab_source_info varchar,
    geocodage_qualite varchar NOT NULL,
    etab_geompoint geometry(MultiPoint, 2154) NOT NULL,
    etab_contact_mail text,  -- Utilisation du type text pour les EMAILS
    etab_contact_tel char(10)
);

-- Documentation de la table
COMMENT ON TABLE sites_economiques.etablissement IS 'Établissement de production d''activité économique';

-- Documentation des champs
COMMENT ON COLUMN sites_economiques.etablissement.siret IS 'Code SIRET de l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.siren IS 'Code SIREN de l''entreprise';
COMMENT ON COLUMN sites_economiques.etablissement.terr_id IS 'Liste des identifiants de TERRAIN-ECO où se situe l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.ban_id IS 'Référence à l''adresse de l''établissement dans la base adresse nationale';
COMMENT ON COLUMN sites_economiques.etablissement.bat_id IS 'Liste des identifiants de bâtiments dans le référentiel national des bâtiments. Le bâtiment principal est listé en premier';
COMMENT ON COLUMN sites_economiques.etablissement.etab_adresse IS 'Adresse de l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.etab_raison_sociale IS 'Raison sociale (nom juridique) de l''entreprise';
COMMENT ON COLUMN sites_economiques.etablissement.etab_nat_juridique IS 'Code de la catégorie juridique de l''entreprise en se référant au 3ème niveau de la nomenclature des catégories juridiques de l''INSEE';
COMMENT ON COLUMN sites_economiques.etablissement.etab_nom IS 'Nom ou appellation usuelle ou sigle de l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.epci_nom IS 'Nom de l''EPCI où se situe l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.epci_siren IS 'Code SIREN de l''EPCI où se situe l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.comm_nom IS 'Nom de la commune où se situe l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.comm_insee IS 'Code INSEE de la commune où se situe l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.etab_siege IS 'Qualité de siège de l''établissement (oui / non)';
COMMENT ON COLUMN sites_economiques.etablissement.etab_creation_date IS 'Date de création de l''établissement (Format : %Y-%m-%d)';
COMMENT ON COLUMN sites_economiques.etablissement.etab_identif_date IS 'Date d''identification de l''établissement (Format : %Y-%m-%d)';
COMMENT ON COLUMN sites_economiques.etablissement.etab_actu_date IS 'Date de dernière actualisation des informations (Format : %Y-%m-%d)';
COMMENT ON COLUMN sites_economiques.etablissement.etab_actif IS 'Établissement en activité (oui / non)';
COMMENT ON COLUMN sites_economiques.etablissement.etab_fermeture_date IS 'Date ou année de fermeture de l''établissement (Format : %Y-%m-%d)';
COMMENT ON COLUMN sites_economiques.etablissement.etab_description IS 'Commentaire libre avec des informations descriptives de l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.etab_activite_code IS 'Code NAF de l''activité principale de l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.etab_activite_libelle IS 'Libellé de l''activité principale de l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.etab_effectif_code IS 'Code INSEE de la tranche d''effectif salarié de l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.etab_effectif_libelle IS 'Libellé de la tranche d''effectif salarié de l''établissement, fourni par la base SIRENE de l''INSEE';
COMMENT ON COLUMN sites_economiques.etablissement.etab_effectif_annee IS 'Millésime de la tranche d''effectif salarié de l''établissement (Format : %Y)';
COMMENT ON COLUMN sites_economiques.etablissement.etab_source_info IS 'Indication de la (des) source(s) d''information sur l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.geocodage_qualite IS 'Qualité de positionnement de l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.etab_geompoint IS 'Multi localisations ponctuelles de l''établissement';
COMMENT ON COLUMN sites_economiques.etablissement.etab_contact_mail IS 'Mail de contact de l''établissement (email)';
COMMENT ON COLUMN sites_economiques.etablissement.etab_contact_tel IS 'Numéro du téléphone de contact de l''établissement';
