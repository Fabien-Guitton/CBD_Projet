CREATE TABLE FAC_TOURS;

CREATE TABLE Personnes(
   Id_Personnes BIGINT,
   Nom_etu VARCHAR(50),
   Prenom_etu VARCHAR(50),
   Num_etu INT(8),
   age_etu INT(3),
   email_etu VARCHAR(50),
   tel_eleve INT(10),
   Nom_ens VARCHAR(50),
   Prenom_ens VARCHAR(50),
   age_ens INT(3),
   email_ens VARCHAR(50),
   tel_prof INT(8),
   nom_agent VARCHAR(50),
   prenom_agent VARCHAR(50),
   age_pers INT(3),
   email_agent VARCHAR(50),
   tel_agent INT(10),
   prof_oui_non BOOLEAN,
   formation_suivi VARCHAR(150),
   Metier VARCHAR(100),
   nb_personne_metier INT(4),
   materiel_pers VARCHAR(100),
   PRIMARY KEY(Id_Personnes)
);

CREATE TABLE Batiments(
   Id_Batiments BIGINT,
   batiment VARCHAR(100),
   utilité VARCHAR(100),
   nb_salle INT(4),
   nom_site VARCHAR(100),
   site_adresse VARCHAR(100),
   codepostal INT(5),
   site_ville VARCHAR(100),
   Date_batiment_construit DATE,
   PRIMARY KEY(Id_Batiments)
);

CREATE TABLE Salles(
   Id_Salles BIGINT,
   nom_salle VARCHAR(100),
   nb_pc INT(4),
   nb_chaises INT(4),
   nb_tables INT(4),
   nom_logiciel VARCHAR(100),
   logiciel_oui_non BOOLEAN,
   tableau_craie_veleda VARCHAR(50),
   num_foramtion INT(10),
   nom_formation VARCHAR(150),
   num_matière INT(10),
   nom_matière VARCHAR(150),
   nom_cours VARCHAR(150),
   date_formation DATE,
   Id_Batiments BIGINT NOT NULL,
   PRIMARY KEY(Id_Salles),
   FOREIGN KEY(Id_Batiments) REFERENCES Batiments(Id_Batiments)
);

CREATE TABLE Travail_Dans(
   Id_Personnes BIGINT,
   Id_Batiments BIGINT,
   Date_passage DATETIME,
   PRIMARY KEY(Id_Personnes, Id_Batiments),
   FOREIGN KEY(Id_Personnes) REFERENCES Personnes(Id_Personnes),
   FOREIGN KEY(Id_Batiments) REFERENCES Batiments(Id_Batiments)
);

INSERT INTO Personnes (Id_Personnes, Nom_etu, Prenom_etu, Num_etu, age_etu, email_etu, tel_eleve, Nom_ens, Prenom_ens, age_ens, email_ens, tel_prof, 
                        nom_agent, prenom_agent, age_pers, prof_oui_non, formation_suivi, Metier, nb_personne_metier, materiel_pers)
VALUES
(1, 'Git', 'Fabien', 25300001, 20, 'fguitton@etu.univtours.fr', 0763812426, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, FALSE, NULL, NULL, 
      'L2 Informatique', NULL, NULL, NULL),
(2, 'Ademou', 'Musa', 25300002, 20, 'mademou@etu.univtours.fr', 0738090763, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, FALSE, NULL, NULL, 
      'L2 Informatique', NULL, NULL, NULL),
(3, 'Naé', 'Mathis', 25300003, 20, 'mnae@etu.univtours.fr', 0795761011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, FALSE, NULL, NULL, 
      'L2 Informatique', NULL, NULL, NULL),
(4, 'Riz', 'Léonie', 25300004, 20, 'lriz@etu.univtours.fr', 0656732443, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, FALSE, NULL, NULL, 
      'L2 Informatique', NULL, NULL, NULL),
(5, 'Beau--Ard', 'Evan', 25300005, 20, 'ebeauard@etu.univtours.fr', 0700000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, FALSE, NULL, NULL, 
      'L2 Informatique', NULL, NULL, NULL),
(6, 'Brah', 'Belkacem', 25300006, 20, 'bbrah@etu.univtours.fr', 0600000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, FALSE, NULL, NULL,  
      'L2 Informatique', NULL, NULL, NULL),
(7, 'Pairl', 'Jeanne', 25300007, 22, 'jpairl@etu.univtours.fr', 0700000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, FALSE, NULL, NULL, 
      'M1 Informatique', NULL, NULL, NULL),
(8, 'Where', 'Flavie', 25300008, 22, 'fwhere@etu.univtours.fr', 0700000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, FALSE, NULL, NULL, 
      'M1 Informatique', NULL, NULL, NULL),
(9, 'Escod', 'Julia', 25300009, 21, 'jescod@etu.univtours.fr', 0700000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, FALSE, NULL, NULL, 
      'L3 Informatique', NULL, NULL, NULL),
(10, 'Ok', 'Charotte', 25300010, 21, 'cok@etu.univtours.fr', 0700000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, FALSE, NULL, NULL, 
      'L3 Informatique', NULL, NULL, NULL),

(11, NULL, NULL, NULL, NULL, NULL, NULL, 'Jumbo', 'Barbabé', 42, 'bjumbo@ens.univtours.fr', 0729369326, NULL, NULL, NULL, TRUE, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, 'Poireau', 'Hercule', 51, 'hpoireau@ens.univtours.fr', 0736064268, NULL, NULL, NULL, TRUE, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, 'Etoiles', 'Annie', 28, 'aetoiles@ens.univtours.fr', 0636076368, NULL, NULL, NULL, TRUE, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, 'Matuo', 'Amine', 32, 'amatuo@ens.univtours.fr', 0708535749, NULL, NULL, NULL, TRUE, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, 'Felsch', 'Eric', 32, 'efelsch@ens.univtours.fr', 0624624272, NULL, NULL, NULL, TRUE, NULL, NULL, NULL, NULL, NULL),

(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, '@', 0000000000, FALSE,  NULL, '', 0, ''),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, '@', 0000000000, FALSE,  NULL, '', 0, ''),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, '@', 0000000000, FALSE,  NULL, '', 0, ''),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, '@', 0000000000, FALSE,  NULL, '', 0, ''),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1, '@', 0000000000, FALSE,  NULL, '', 0, ''),

(21, 'Cambodge', 'Matis', 25300011, 20, 'mcambodge@etu.univtours.fr', 0000000000,  NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, FALSE, NULL, NULL, 
      'L1 Informatique', NULL, NULL, NULL),

();

INSERT INTO Batiments (Id_Batiments, batiment, utilité, nb_salle, nom_site, site_adresse, codepostal, site_ville, Date_batiment_construit)
VALUES
(1, 'Bâtiment F', 'Cours', 10, 'Site de Grandmont, Factulté des Sciences et Techniques', 'Parc Grandmont, 31 Av. Monge Bâtiment F', 37200, 'Tours', 1990),
(2, 'Bâtiment E1', 'Cours', 0, 'Site de Grandmont, Factulté des Sciences et Techniques', 'Parc Grandmont, 31 Av. Monge Bâtiment E1', 37200, 'Tours', 2000),
(3, 'Bâtiment E2', 'Cours', 0, 'Site de Grandmont, Factulté des Sciences et Techniques', 'Parc Grandmont, 31 Av. Monge Bâtiment E2', 37200, 'Tours', 2000),
(4, 'Bâtiment L', 'Cours', 0, 'Site de Grandmont, Factulté des Sciences et Techniques', 'Parc Grandmont, 31 Av. Monge Bâtiment L', 37200, 'Tours', 2010),
();

INSERT INTO Salles (Id_Salles, nom_salle, nb_pc, nb_chaises, nb_tables, nom_logiciel, logiciel_oui_non, tableau_craie_veleda, num_foramtion, nom_formation, 
                     num_matière, nom_matière, nom_cours, date_formation, Id_Batiments)
VALUES
(1, 'Amphi 20', 0, 300, 300, NULL, FALSE, 'Craie', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Amphi 21', 0, 400, 400, NULL, FALSE, 'Craie', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'Amphi 22', 0, 400, 400, NULL, FALSE, 'Craie', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 'Amphi 23', 0, 80, 40, NULL, FALSE, 'Craie', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 'Amphi Biologie', 0, 500, 500, NULL, FALSE, 'Craie', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 'Amphi Physique', 0, 500, 500, NULL, FALSE, 'Craie', NULL, NULL, NULL, NULL, NULL, NULL, 1),d
(7, '120', 0, 50, 50, NULL, FALSE, 'Craie', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, '121', 0, 50, 50, NULL, FALSE, 'Craie', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(9, '122', 0, 50, 50, NULL, FALSE, 'Craie', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(10, '123', 0, 50, 50, NULL, FALSE, 'Craie', NULL, NULL, NULL, NULL, NULL, NULL, 1),
();

INSERT INTO Travail_Dans (Id_Personnes, Id_Batiments, Date_passage)
VALUES
(11, 1, ),
();
