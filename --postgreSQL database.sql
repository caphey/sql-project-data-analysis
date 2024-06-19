--
-- Structure de la table `abonnement`
--

CREATE TABLE IF NOT EXISTS abonnement (
  id SERIAL PRIMARY KEY,
  dateDebut DATE DEFAULT NULL,
  dateFin DATE DEFAULT NULL,
  typeAbonnement VARCHAR(45) DEFAULT NULL,
  modifieA DATE DEFAULT NULL,
  utilisateur_id INT NOT NULL
);

--
-- Déchargement des données de la table `abonnement`
--

INSERT INTO abonnement (dateDebut, dateFin, typeAbonnement, modifieA, utilisateur_id) VALUES
('2023-10-23', '2023-11-23', 'Mensuel', '2023-10-28', 1),
('2023-01-15', '2023-02-15', 'Mensuel', '2023-02-16', 2),
('2023-03-20', '2023-04-20', 'Annuel', '2023-04-21', 3),
('2023-05-10', '2023-06-10', 'Mensuel', '2023-06-11', 4),
('2023-07-08', '2023-08-08', 'Mensuel', '2023-08-09', 5),
('2023-09-05', '2023-10-05', 'Annuel', '2023-10-06', 6),
('2023-11-12', '2023-12-12', 'Mensuel', '2023-12-13', 7),
('2024-01-25', '2024-02-25', 'Mensuel', '2024-02-26', 8),
('2024-03-16', '2024-04-16', 'Annuel', '2024-04-17', 9),
('2024-05-18', '2024-06-18', 'Mensuel', '2024-06-19', 10),
('2024-07-07', '2024-08-07', 'Mensuel', '2024-08-08', 11),
('2024-09-29', '2024-10-29', 'Annuel', '2024-10-30', 12),
('2024-11-14', '2024-12-14', 'Mensuel', '2024-12-15', 13),
('2025-01-02', '2025-02-02', 'Mensuel', '2025-02-03', 14),
('2025-03-30', '2025-04-30', 'Annuel', '2025-05-01', 15),
('2025-05-08', '2025-06-08', 'Mensuel', '2025-06-09', 16),
('2025-07-19', '2025-08-19', 'Mensuel', '2025-08-20', 17),
('2025-09-22', '2025-10-22', 'Annuel', '2025-10-23', 18),
('2025-11-11', '2025-12-11', 'Mensuel', '2025-12-12', 19),
('2026-01-28', '2026-02-28', 'Mensuel', '2026-03-01', 20),
('2026-03-10', '2026-04-10', 'Annuel', '2026-04-11', 21),
('2026-05-14', '2026-06-14', 'Mensuel', '2026-06-15', 22),
('2026-07-06', '2026-08-06', 'Mensuel', '2026-08-07', 23),
('2026-09-17', '2026-10-17', 'Annuel', '2026-10-18', 24),
('2026-11-23', '2026-12-23', 'Mensuel', '2026-12-24', 25),
('2027-01-19', '2027-02-19', 'Mensuel', '2027-02-20', 26),
('2027-03-28', '2027-04-28', 'Annuel', '2027-04-29', 27),
('2027-05-05', '2027-06-05', 'Mensuel', '2027-06-06', 28),
('2027-07-25', '2027-08-25', 'Mensuel', '2027-08-26', 29),
('2027-09-09', '2027-10-09', 'Annuel', '2027-10-10', 30),
('2027-11-27', '2027-12-27', 'Mensuel', '2027-12-28', 31),
('2028-01-03', '2028-02-03', 'Mensuel', '2028-02-04', 32),
('2028-03-22', '2028-04-22', 'Annuel', '2028-04-23', 33),
('2028-05-30', '2028-06-30', 'Mensuel', '2028-07-01', 34),
('2028-07-14', '2028-08-14', 'Mensuel', '2028-08-15', 35),
('2028-09-02', '2028-10-02', 'Annuel', '2028-10-03', 36),
('2028-11-10', '2028-12-10', 'Mensuel', '2028-12-11', 37),
('2029-01-27', '2029-02-27', 'Mensuel', '2029-02-28', 38),
('2029-03-15', '2029-04-15', 'Annuel', '2029-04-16', 39),
('2029-05-09', '2029-06-09', 'Mensuel', '2029-06-10', 40);

--
-- Index pour la table `abonnement`
--

CREATE INDEX IF NOT EXISTS fk_abonnement_utilisateur1_idx ON abonnement (utilisateur_id);

-- --------------------------------------------------------

--
-- Structure de la table `episode_serie`
--

CREATE TABLE IF NOT EXISTS episode_serie (
  id SERIAL PRIMARY KEY,
  titre VARCHAR(90) DEFAULT NULL,
  saison INT DEFAULT NULL,
  duree INT DEFAULT NULL,
  modifieA DATE DEFAULT NULL
);

--
-- Déchargement des données de la table `episode_serie`
--

INSERT INTO episode_serie (titre, saison, duree, modifieA) VALUES
('Breaking', 3, 78, '2023-10-28'),
('Pilot', 1, 45, '2023-10-28'),
('TheBeginning', 1, 50, '2023-10-28'),
('FirstSteps', 2, 48, '2023-10-28'),
('ANewWorld', 2, 52, '2023-10-28'),
('TheJourneyContinues', 3, 47, '2023-10-28'),
('LostintheForest', 3, 49, '2023-10-28'),
('TheSecretRevealed', 4, 46, '2023-10-28'),
('IntotheUnknown', 4, 53, '2023-10-28'),
('UnchartedTerritory', 5, 45, '2023-10-28'),
('HiddenTreasures', 5, 51, '2023-10-28'),
('TheQuestBegins', 6, 48, '2023-10-28'),
('MysteriesUnveiled', 6, 50, '2023-10-28'),
('TheGreatDiscovery', 7, 47, '2023-10-28'),
('TheForbiddenTemple', 7, 52, '2023-10-28'),
('RaceAgainstTime', 8, 46, '2023-10-28'),
('TheFinalBattle', 8, 54, '2023-10-28'),
('ANewChapter', 9, 49, '2023-10-28'),
('TheLegacyContinues', 9, 51, '2023-10-28'),
('SecretsofthePast', 10, 45, '2023-10-28'),
('Revelations', 10, 50, '2023-10-28'),
('TheHiddenClue', 11, 48, '2023-10-28'),
('TheEnigma', 11, 52, '2023-10-28'),
('ThePuzzlingRiddle', 12, 47, '2023-10-28'),
('SolvingtheMystery', 12, 53, '2023-10-28'),
('TheLastClue', 13, 46, '2023-10-28'),
('TheUltimateChallenge', 13, 55, '2023-10-28'),
('TheGrandFinale', 14, 49, '2023-10-28'),
('BeyondtheUnknown', 14, 51, '2023-10-28'),
('TheHiddenTreasure', 15, 45, '2023-10-28'),
('UnravelingtheTruth', 15, 50, '2023-10-28'),
('TheFinalCountdown', 16, 48, '2023-10-28'),
('TheClimax', 16, 52, '2023-10-28'),
('TheRevelation', 17, 47, '2023-10-28'),
('TheFinalReveal', 17, 54, '2023-10-28'),
('TheEpicConclusion', 18, 49, '2023-10-28'),
('TheUntoldStory', 18, 51, '2023-10-28'),
('JourneytotheUnknown', 19, 45, '2023-10-28'),
('TheFinalFrontier', 19, 50, '2023-10-28'),
('TheEndoftheRoad', 20, 48, '2023-10-28'),
('TheMysteriousCase', 21, 45, '2023-10-28'),
('TheLostArtifact', 21, 50, '2023-10-28'),
('TheEnchantedForest', 22, 48, '2023-10-28'),
('TheForgottenLegend', 22, 52, '2023-10-28'),
('TheHiddenChamber', 23, 47, '2023-10-28'),
('TheEmeraldCity', 23, 54, '2023-10-28'),
('TheEternalQuest', 24, 49, '2023-10-28'),
('TheGoldenKey', 24, 51, '2023-10-28'),
('TheFinalDestination', 25, 45, '2023-10-28'),
('TheLegendaryJourney', 25, 50, '2023-10-28');


-- --------------------------------------------------------

--
-- Structure de la table evaluation
--

CREATE TABLE IF NOT EXISTS evaluation (
  id SERIAL PRIMARY KEY,
  note INT CHECK (note >= 0 AND note <= 10),
  modifieA DATE DEFAULT NULL,
  serie_id INT NOT NULL,
  utilisateur_id INT NOT NULL,
  film_id INT NOT NULL
);

--
-- Déchargement des données de la table evaluation
--

INSERT INTO evaluation (note, modifieA, serie_id, utilisateur_id, film_id) VALUES
(5, '2023-10-28', 40, 40, 40),
(9, '2023-10-28', 1, 1, 1),
(1, '2023-10-28', 2, 2, 2),
(3, '2023-10-28', 3, 3, 3),
(4, '2023-10-28', 4, 4, 4),
(5, '2023-10-28', 5, 5, 5),
(4, '2023-10-28', 6, 6, 6),
(8, '2023-10-28', 7, 7, 7),
(6, '2023-10-28', 8, 8, 8),
(6, '2023-10-28', 9, 9, 9),
(5, '2023-10-28', 10, 10, 10),
(4, '2023-10-28', 11, 11, 11),
(5, '2023-10-28', 12, 12, 12),
(3, '2023-10-28', 13, 13, 13),
(4, '2023-10-28', 14, 14, 14),
(8, '2023-10-28', 15, 15, 15),
(4, '2023-10-28', 16, 16, 16),
(5, '2023-10-28', 17, 17, 17),
(3, '2023-10-28', 18, 18, 18),
(4, '2023-10-28', 19, 19, 19),
(9, '2023-10-28', 20, 20, 20),
(4, '2023-10-28', 21, 21, 21),
(5, '2023-10-28', 22, 22, 22),
(7, '2023-10-28', 23, 23, 23),
(8, '2023-10-28', 24, 24, 24),
(5, '2023-10-28', 25, 25, 25),
(4, '2023-10-28', 26, 26, 26),
(5, '2023-10-28', 27, 27, 27),
(2, '2023-10-28', 28, 28, 28),
(8, '2023-10-28', 29, 29, 29),
(5, '2023-10-28', 30, 30, 30),
(4, '2023-10-28', 31, 31, 31),
(0, '2023-10-28', 32, 32, 32),
(1, '2023-10-28', 33, 33, 33),
(4, '2023-10-28', 34, 34, 34),
(5, '2023-10-28', 35, 35, 35),
(4, '2023-10-28', 36, 36, 36),
(6, '2023-10-28', 37, 37, 37),
(3, '2023-10-28', 38, 38, 38),
(9, '2023-10-28', 39, 39, 39);


--
-- Index pour la table evaluation
--

CREATE INDEX IF NOT EXISTS fk_evaluation_series_idx ON evaluation (serie_id);
CREATE INDEX IF NOT EXISTS fk_evaluation_utilisateur1_idx ON evaluation (utilisateur_id);
CREATE INDEX IF NOT EXISTS fk_evaluation_film1_idx ON evaluation (film_id);

-- --------------------------------------------------------

--
-- Structure de la table films
--

CREATE TABLE IF NOT EXISTS film (
  id SERIAL PRIMARY KEY,
  titre VARCHAR(90) NOT NULL,
  duree INT DEFAULT NULL,
  modifieA DATE DEFAULT NULL,
  genre_id INT NOT NULL,
  sortie_id INT NOT NULL,
  realisateur_id INT NOT NULL
);

--
-- Déchargement des données de la table film
--

INSERT INTO film (titre, duree, modifieA, genre_id, sortie_id, realisateur_id) VALUES
('American History X', 119, '2023-10-28', 13, 13, 13),
('Braveheart', 177, '2023-10-28', 21, 36, 36),
('City of God', 130, '2023-10-28', 28, 39, 39),
('Die Hard', 132, '2023-10-28', 13, 38, 38),
('Fight Club', 139, '2023-10-28', 3, 3, 3),
('For a Few Dollars More', 132, '2023-10-28', 32, 33, 33),
('Forrest Gump', 142, '2023-10-28', 5, 5, 5),
('Gladiator', 155, '2023-10-28', 9, 9, 9),
('Glory', 122, '2023-10-28', 30, 30, 30),
('Goodfellas', 146, '2023-10-28', 28, 28, 28),
('Gran Torino', 116, '2023-10-28', 25, 35, 35),
('Heat', 170, '2023-10-28', 11, 37, 37),
('Inception', 148, '2023-10-28', 2, 2, 2),
('Inglourious Basterds', 153, '2023-10-28', 20, 20, 20),
('Jurassic Park', 127, '2023-10-28', 32, 32, 32),
('Kill Bill Vol. 1', 111, '2023-10-28', 25, 25, 25),
('Kill Bill Vol. 2', 136, '2023-10-28', 26, 26, 26),
('Memento', 113, '2023-10-28', 21, 21, 21),
('Pulp Fiction', 154, '2023-10-28', 4, 4, 4),
('Saving Private Ryan', 169, '2023-10-28', 29, 29, 29),
('Schindlers List', 195, '2023-10-28', 22, 22, 22),
('Seven', 127, '2023-10-28', 16, 16, 16),
('The Avengers', 143, '2023-10-28', 23, 23, 23),
('The Dark Knight', 152, '2023-10-28', 1, 1, 1),
('The Dark Knight Rises', 165, '2023-10-28', 12, 12, 12),
('The Departed', 151, '2023-10-28', 18, 18, 18),
('The Godfather', 175, '2023-10-28', 11, 11, 11),
('The Godfather Part II', 202, '2023-10-28', 24, 34, 34),
('The Green Mile', 189, '2023-10-28', 14, 14, 14),
('The Hateful Eight', 168, '2023-10-28', 24, 24, 24),
('The Intouchables', 112, '2023-10-28', 27, 27, 27),
('The Lord of the Rings: The Return of the King', 201, '2023-10-28', 8, 8, 8),
('The Lord of the Rings: The Two Towers', 179, '2023-10-28', 17, 17, 17),
('The Matrix', 136, '2023-10-28', 7, 7, 7),
('The Prestige', 130, '2023-10-28', 15, 15, 15),
('The Revenant', 156, '2023-10-28', 31, 31, 31),
('The Shawshank Redemption', 142, '2023-10-28', 6, 6, 6),
('The Silence of the Lambs', 118, '2023-10-28', 10, 10, 10),
('The Usual Suspects', 106, '2023-10-28', 19, 19, 19),
('The Gangster', 148, '2023-10-28', 2, 13, 13),
('Interstellar', 169, '2023-11-01', 2, 40, 40),
('The Social Network', 120, '2023-11-01', 27, 41, 41),
('Whiplash', 106, '2023-11-01', 15, 42, 42),
('Mad Max: Fury Road', 120, '2023-11-01', 1, 43, 43),
('Parasite', 132, '2023-11-01', 18, 44, 44),
('Joker', 122, '2023-11-01', 6, 45, 45),
('Blade Runner 2049', 163, '2023-11-01', 5, 46, 46),
('The Lion King', 118, '2023-11-01', 8, 47, 47),
('Spider-Man: Into the Spider-Verse', 117, '2023-11-01', 21, 48, 48),
('A Beautiful Mind', 135, '2023-11-01', 22, 49, 49);

--
-- Index pour la table film
--

CREATE INDEX IF NOT EXISTS fk_film_genre1_idx ON film (genre_id);
CREATE INDEX IF NOT EXISTS fk_film_sortie1_idx ON film (sortie_id);
CREATE INDEX IF NOT EXISTS fk_film_realisateur1_idx ON film (realisateur_id);

-- --------------------------------------------------------

--
-- Structure de la table genre
--

CREATE TABLE IF NOT EXISTS genre (
  id SERIAL PRIMARY KEY,
  nom VARCHAR(45) DEFAULT NULL,
  modifieA DATE DEFAULT NULL
);

--
-- Insertion des données dans la table genre
--

INSERT INTO genre (nom, modifieA) VALUES
('Horreur', '2023-10-28'),
('Action', '2023-10-28'),
('Comedie', '2023-10-28'),
('Drame', '2023-10-28'),
('Science-fiction', '2023-10-28'),
('Aventure', '2023-10-28'),
('Romance', '2023-10-28'),
('Animation', '2023-10-28'),
('Documentaire', '2023-10-28'),
('Mystere', '2023-10-28'),
('Fantaisie', '2023-10-28'),
('Thriller', '2023-10-28'),
('Policier', '2023-10-28'),
('Historique', '2023-10-28'),
('Musique', '2023-10-28'),
('Western', '2023-10-28'),
('Guerre', '2023-10-28'),
('Biographie', '2023-10-28'),
('Sport', '2023-10-28'),
('Familial', '2023-10-28'),
('Super-heros', '2023-10-28'),
('Epouvante', '2023-10-28'),
('Science', '2023-10-28'),
('Politique', '2023-10-28'),
('Espionnage', '2023-10-28'),
('Catastrophe', '2023-10-28'),
('Suspense', '2023-10-28'),
('Steampunk', '2023-10-28'),
('Apocalyptique', '2023-10-28'),
('Medieval', '2023-10-28'),
('Cyberpunk', '2023-10-28'),
('Surnaturel', '2023-10-28'),
('Romantique', '2023-10-28');


-- --------------------------------------------------------

--
-- Structure de la table realisateur
--

CREATE TABLE IF NOT EXISTS realisateur (
  id SERIAL PRIMARY KEY,
  nom VARCHAR(45) DEFAULT NULL,
  prenom VARCHAR(45) DEFAULT NULL,
  nombreRealisations INT DEFAULT NULL,
  modifieA DATE DEFAULT NULL
);

--
-- Insertion des données dans la table realisateur
--

INSERT INTO realisateur (nom, prenom, nombreRealisations, modifieA) VALUES
('Ben', 'Amor', 99, '2023-10-28'),
('Smith', 'John', 25, '2023-10-28'),
('Johnson', 'Emily', 30, '2023-10-28'),
('Brown', 'David', 20, '2023-10-28'),
('Martin', 'Sophie', 40, '2023-10-28'),
('White', 'Thomas', 35, '2023-10-28'),
('Lee', 'Laura', 22, '2023-10-28'),
('Davis', 'Michael', 28, '2023-10-28'),
('Roberts', 'Olivia', 50, '2023-10-28'),
('Green', 'Emma', 45, '2023-10-28'),
('Adams', 'Daniel', 33, '2023-10-28'),
('Smith', 'Ella', 26, '2023-10-28'),
('Johnson', 'William', 36, '2023-10-28'),
('Martin', 'Sophia', 32, '2023-10-28'),
('Brown', 'David', 38, '2023-10-28'),
('Smith', 'Sophia', 42, '2023-10-28'),
('Johnson', 'Oliver', 29, '2023-10-28'),
('White', 'Grace', 39, '2023-10-28'),
('Lee', 'Jacob', 27, '2023-10-28'),
('Davis', 'Sophie', 47, '2023-10-28'),
('Roberts', 'Liam', 48, '2023-10-28'),
('Green', 'Ava', 55, '2023-10-28'),
('Adams', 'Noah', 31, '2023-10-28'),
('Smith', 'Emma', 44, '2023-10-28'),
('Johnson', 'William', 36, '2023-10-28'),
('Martin', 'Sophia', 32, '2023-10-28'),
('Brown', 'David', 39, '2023-10-28'),
('Smith', 'Ella', 28, '2023-10-28'),
('Johnson', 'Sophia', 50, '2023-10-28'),
('White', 'Liam', 48, '2023-10-28'),
('Lee', 'Ava', 53, '2023-10-28'),
('Davis', 'Noah', 37, '2023-10-28'),
('Roberts', 'Olivia', 42, '2023-10-28'),
('Green', 'Jacob', 30, '2023-10-28'),
('Adams', 'Sophie', 29, '2023-10-28'),
('Smith', 'Liam', 35, '2023-10-28'),
('Johnson', 'Emma', 34, '2023-10-28'),
('Martin', 'William', 46, '2023-10-28'),
('Brown', 'Sophia', 41, '2023-10-28'),
('Smith', 'David', 40, '2023-10-28'),
('Johnson', 'Sophia', 50, '2024-06-19'),
('White', 'Liam', 48, '2024-06-19'),
('Lee', 'Ava', 53, '2024-06-19'),
('Davis', 'Noah', 37, '2024-06-19'),
('Roberts', 'Olivia', 42, '2024-06-19'),
('Green', 'Jacob', 30, '2024-06-19'),
('Adams', 'Sophie', 29, '2024-06-19'),
('Smith', 'Liam', 35, '2024-06-19'),
('Johnson', 'Emma', 34, '2024-06-19'),
('Martin', 'William', 46, '2024-06-19');

-- --------------------------------------------------------

--
-- Structure de la table serie
--

CREATE TABLE IF NOT EXISTS serie (
  id SERIAL PRIMARY KEY,
  titre VARCHAR(90) NOT NULL,
  duree INT DEFAULT NULL,
  nombreEpi INT DEFAULT NULL,
  modifieA DATE DEFAULT NULL,
  sortie_id INT NOT NULL,
  genre_id INT NOT NULL,
  episodeSerie_id INT NOT NULL,
  realisateur_id INT NOT NULL
);

--
-- Déchargement des données de la table serie
--

INSERT INTO serie (titre, duree, nombreEpi, modifieA, sortie_id, genre_id, episodeSerie_id, realisateur_id) VALUES
('Lost', 68, 14, '2023-10-28', 40, 21, 40, 40),
('Breaking Bad', 47, 62, '2023-10-28', 1, 1, 1, 1),
('Game of Thrones', 57, 73, '2023-10-28', 2, 2, 2, 2),
('Stranger Things', 51, 25, '2023-10-28', 3, 3, 3, 3),
('The Mandalorian', 41, 16, '2023-10-28', 4, 4, 4, 4),
('The Walking Dead', 44, 156, '2023-10-28', 5, 5, 5, 5),
('Peaky Blinders', 47, 62, '2023-10-28', 6, 6, 6, 6),
('Friends', 57, 73, '2023-10-28', 7, 7, 7, 7),
('The Crown', 51, 25, '2023-10-28', 8, 8, 8, 8),
('The Office', 41, 16, '2023-10-28', 9, 9, 9, 9),
('Black Mirror', 44, 156, '2023-10-28', 10, 10, 10, 10),
('Greys Anatomy', 47, 62, '2023-10-28', 11, 11, 11, 11),
('Westworld', 57, 73, '2023-10-28', 12, 12, 12, 12),
('Vikings', 51, 25, '2023-10-28', 13, 13, 13, 13),
('The Witcher', 41, 16, '2023-10-28', 14, 14, 14, 14),
('Narcos', 44, 156, '2023-10-28', 15, 15, 15, 15),
('House of Cards', 47, 62, '2023-10-28', 16, 16, 16, 16),
('The Simpsons', 57, 73, '2023-10-28', 17, 17, 17, 17),
('Ozark', 51, 25, '2023-10-28', 18, 18, 18, 18),
('Dark', 41, 16, '2023-10-28', 19, 19, 19, 19),
('Mr. Robot', 44, 156, '2023-10-28', 20, 20, 20, 20),
('The Boys', 47, 62, '2023-10-28', 21, 21, 21, 21),
('Mindhunter', 57, 73, '2023-10-28', 22, 22, 22, 22),
('Fargo', 51, 25, '2023-10-28', 23, 23, 23, 23),
('Better Call Saul', 44, 156, '2023-10-28', 25, 25, 25, 25),
('Supernatural', 47, 62, '2023-10-28', 26, 26, 26, 26),
('X-Files', 57, 73, '2023-10-28', 27, 27, 27, 27),
('The Good Place', 51, 25, '2023-10-28', 28, 28, 28, 28),
('True Detective', 41, 16, '2023-10-28', 29, 29, 29, 29),
('Sherlock', 44, 156, '2023-10-28', 30, 30, 30, 30),
('Gossip Girl', 47, 62, '2023-10-28', 31, 31, 31, 31),
('The Wire', 57, 73, '2023-10-28', 32, 32, 32, 32),
('Stranger Things', 51, 25, '2023-10-28', 33, 4, 33, 33),
('The Mandalorian', 41, 16, '2023-10-28', 34, 17, 34, 34),
('The Walking Dead', 44, 156, '2023-10-28', 35, 1, 35, 35),
('The Mandalorian', 47, 296, '2023-10-28', 36, 25, 36, 36),
('UneautreSerie', 50, 436, '2023-10-28', 37, 15, 37, 37),
('Lost', 53, 576, '2023-10-28', 38, 28, 38, 38),
('Big Mouth', 56, 716, '2023-10-28', 39, 6, 39, 39),
('The Expanse', 60, 56, '2023-11-01', 41, 5, 41, 41),
('Money Heist', 50, 31, '2023-11-01', 42, 13, 42, 42),
('The Handmaids Tale', 48, 46, '2023-11-01', 43, 24, 43, 43),
('The Umbrella Academy', 55, 30, '2023-11-01', 44, 21, 44, 44),
('Lucifer', 42, 77, '2023-11-01', 45, 23, 45, 45),
('Brooklyn Nine-Nine', 22, 153, '2023-11-01', 46, 7, 46, 46),
('The Haunting of Hill House', 50, 10, '2023-11-01', 47, 22, 47, 47),
('Archer', 24, 113, '2023-11-01', 48, 8, 48, 48),
('Daredevil', 54, 39, '2023-11-01', 49, 20, 49, 49),
('Rick and Morty', 22, 51, '2023-11-01', 50, 18, 50, 50);


-- 
-- Index pour la table serie
--

CREATE INDEX IF NOT EXISTS fk_serie_sortie1_idx ON serie (sortie_id);
CREATE INDEX IF NOT EXISTS fk_serie_genre1_idx ON serie (genre_id);
CREATE INDEX IF NOT EXISTS fk_serie_episode_serie1_idx ON serie (episodeSerie_id);
CREATE INDEX IF NOT EXISTS fk_serie_realisateur1_idx ON serie (realisateur_id);

-- --------------------------------------------------------

--
-- Structure de la table sortie
--
CREATE TABLE IF NOT EXISTS sortie (
  id SERIAL PRIMARY KEY,
  date DATE DEFAULT NULL,
  modifieA DATE DEFAULT NULL
);

--
-- Déchargement des données de la table sortie
--

INSERT INTO sortie (date, modifieA) VALUES
('2023-10-28', '2023-10-28'),
('2023-01-15', '2023-02-16'),
('2023-03-20', '2023-04-21'),
('2023-05-10', '2023-06-11'),
('2023-07-08', '2023-08-09'),
('2023-09-05', '2023-10-06'),
('2023-11-12', '2023-12-13'),
('2024-01-25', '2024-02-26'),
('2024-03-16', '2024-04-17'),
('2024-05-18', '2024-06-19'),
('2024-07-07', '2024-08-08'),
('2024-09-29', '2024-10-30'),
('2024-11-14', '2024-12-15'),
('2025-01-02', '2024-06-19'),
('2025-03-30', '2024-06-19'),
('2025-05-08', '2024-06-19'),
('2025-07-19', '2025-08-20'),
('2025-09-22', '2025-10-23'),
('2025-11-11', '2025-12-12'),
('2026-01-28', '2026-02-01'),
('2026-03-10', '2026-04-11'),
('2026-05-14', '2026-06-15'),
('2026-07-06', '2026-08-07'),
('2026-09-17', '2026-10-18'),
('2026-11-23', '2026-12-24'),
('2027-01-19', '2027-02-20'),
('2027-03-28', '2027-04-29'),
('2027-05-05', '2027-06-06'),
('2027-07-25', '2027-08-26'),
('2027-09-09', '2027-10-10'),
('2027-11-27', '2027-12-28'),
('2028-01-03', '2028-02-04'),
('2028-03-22', '2028-04-23'),
('2028-05-30', '2028-07-01'),
('2028-07-14', '2028-08-15'),
('2028-09-02', '2028-10-03'),
('2028-10-11', '2028-12-12'),
('2029-01-27', '2029-02-28'),
('2029-03-15', '2029-04-16'),
('2029-05-09', '2029-06-10'),
('2029-07-14', '2029-08-15'),
('2030-09-02', '2030-10-03'),
('2030-10-11', '2030-12-12'),
('2031-01-27', '2031-02-28'),
('2031-03-15', '2031-04-16'),
('2031-05-09', '2031-06-10'),
('2031-07-25', '2031-08-26'),
('2031-09-09', '2031-10-10'),
('2031-11-27', '2031-12-28'),
('2032-01-03', '2032-02-04'),
('2032-03-22', '2032-04-23'),
('2032-05-30', '2032-07-01'),
('2032-07-14', '2032-08-15');


-- --------------------------------------------------------

--
-- Structure de la table utilisateur
--

CREATE TABLE IF NOT EXISTS utilisateur (
  id SERIAL PRIMARY KEY,
  email VARCHAR(90) NOT NULL,
  nom VARCHAR(90),
  prenom VARCHAR(90),
  motDePasse VARCHAR(255) NOT NULL,
  filmsRegarde INT,
  seriesRegarde INT,
  modifieA DATE
);

--
-- Déchargement des données de la table utilisateur
--

INSERT INTO utilisateur (email, nom, prenom, motDePasse, filmsRegarde, seriesRegarde, modifieA) VALUES
('utilisateur0@email.com', 'Ben', 'Amor', 'motDePasse0', 15, 32, '2023-10-29'),
('utilisateur1@email.com', 'Smith', 'John', 'motdepasse123', 25, 15, '2023-10-29'),
('utilisateur2@email.com', 'Johnson', 'Emily', 'pass123', 30, 20, '2023-10-29'),
('utilisateur3@email.com', 'Brown', 'David', 'mdp456', 20, 10, '2023-10-29'),
('utilisateur4@email.com', 'Martin', 'Sophie', 'mdp789', 40, 25, '2023-10-29'),
('utilisateur5@email.com', 'White', 'Thomas', 'pass456', 35, 18, '2023-10-29'),
('utilisateur6@email.com', 'Lee', 'Laura', 'mdp987', 22, 12, '2023-10-29'),
('utilisateur7@email.com', 'Davis', 'Michael', 'pass789', 28, 16, '2023-10-29'),
('utilisateur8@email.com', 'Roberts', 'Olivia', 'mdp654', 50, 30, '2023-10-29'),
('utilisateur9@email.com', 'Green', 'Emma', 'pass987', 45, 22, '2023-10-29'),
('utilisateur10@email.com', 'Adams', 'Daniel', 'mdp123', 33, 19, '2023-10-29'),
('utilisateur11@email.com', 'Smith', 'Ella', 'pass321', 26, 14, '2023-10-29'),
('utilisateur12@email.com', 'Johnson', 'William', 'mdp555', 36, 24, '2023-10-29'),
('utilisateur13@email.com', 'Martin', 'Sophia', 'pass555', 32, 20, '2023-10-29'),
('utilisateur14@email.com', 'Brown', 'David', 'mdp999', 38, 18, '2023-10-29'),
('utilisateur15@email.com', 'Smith', 'Sophia', 'mdp333', 42, 23, '2023-10-29'),
('utilisateur16@email.com', 'Johnson', 'Oliver', 'mdp777', 29, 17, '2023-10-29'),
('utilisateur17@email.com', 'White', 'Grace', 'pass777', 39, 21, '2023-10-29'),
('utilisateur18@email.com', 'Lee', 'Jacob', 'mdp111', 27, 13, '2023-10-29'),
('utilisateur19@email.com', 'Davis', 'Sophie', 'pass111', 47, 28, '2023-10-29'),
('utilisateur20@email.com', 'Roberts', 'Liam', 'mdp222', 48, 29, '2023-10-29'),
('utilisateur21@email.com', 'Green', 'Ava', 'pass222', 55, 33, '2023-10-29'),
('utilisateur22@email.com', 'Adams', 'Noah', 'mdp444', 31, 20, '2023-10-29'),
('utilisateur23@email.com', 'Smith', 'Emma', 'pass444', 44, 26, '2023-10-29'),
('utilisateur24@email.com', 'Johnson', 'William', 'mdp999', 36, 24, '2023-10-29'),
('utilisateur25@email.com', 'Martin', 'Sophia', 'pass555', 32, 20, '2023-10-29'),
('utilisateur26@email.com', 'Brown', 'David', 'mdp222', 39, 19, '2023-10-29'),
('utilisateur27@email.com', 'Smith', 'Ella', 'pass111', 28, 14, '2023-10-29'),
('utilisateur28@email.com', 'Johnson', 'Sophia', 'mdp777', 50, 28, '2023-10-29'),
('utilisateur29@email.com', 'White', 'Liam', 'pass555', 48, 27, '2023-10-29'),
('utilisateur30@email.com', 'Lee', 'Ava', 'mdp444', 53, 32, '2023-10-29'),
('utilisateur31@email.com', 'Davis', 'Noah', 'pass222', 37, 18, '2023-10-29'),
('utilisateur32@email.com', 'Roberts', 'Olivia', 'mdp111', 42, 23, '2023-10-29'),
('utilisateur33@email.com', 'Green', 'Jacob', 'pass777', 30, 15, '2023-10-29'),
('utilisateur34@email.com', 'Adams', 'Sophie', 'mdp123', 29, 17, '2023-10-29'),
('utilisateur35@email.com', 'Smith', 'Liam', 'pass123', 35, 19, '2023-10-29'),
('utilisateur36@email.com', 'Johnson', 'Emma', 'mdp777', 34, 21, '2023-10-29'),
('utilisateur37@email.com', 'Martin', 'William', 'pass222', 46, 25, '2023-10-29'),
('utilisateur38@email.com', 'Brown', 'Sophia', 'mdp444', 41, 22, '2023-10-29'),
('utilisateur39@email.com', 'Smith', 'David', 'pass555', 40, 20, '2023-10-29'),
('utilisateur40@email.com', 'Williams', 'Aiden', 'pass654', 37, 19, '2023-11-01'),
('utilisateur41@email.com', 'Jones', 'Mia', 'mdp321', 34, 16, '2023-11-01'),
('utilisateur42@email.com', 'Garcia', 'Lucas', 'pass987', 41, 22, '2023-11-01'),
('utilisateur43@email.com', 'Martinez', 'Lily', 'mdp654', 28, 14, '2023-11-01'),
('utilisateur44@email.com', 'Rodriguez', 'James', 'pass321', 30, 15, '2023-11-01'),
('utilisateur45@email.com', 'Wilson', 'Emily', 'mdp987', 42, 24, '2023-11-01'),
('utilisateur46@email.com', 'Anderson', 'Michael', 'pass654', 36, 20, '2023-11-01'),
('utilisateur47@email.com', 'Thomas', 'Sophia', 'mdp321', 29, 13, '2023-11-01'),
('utilisateur48@email.com', 'Taylor', 'Isabella', 'pass987', 38, 18, '2023-11-01'),
('utilisateur49@email.com', 'Moore', 'Mason', 'mdp654', 44, 26, '2023-11-01'),
('utilisateur50@email.com', 'Jackson', 'Olivia', 'pass321', 32, 17, '2023-11-01'),
('utilisateur51@email.com', 'Martin', 'Lucas', 'mdp987', 37, 19, '2023-11-01'),
('utilisateur52@email.com', 'Lee', 'Mia', 'pass654', 31, 15, '2023-11-01'),
('utilisateur53@email.com', 'Perez', 'Alexander', 'mdp321', 39, 21, '2023-11-01'),
('utilisateur54@email.com', 'Thompson', 'Charlotte', 'pass987', 33, 16, '2023-11-01'),
('utilisateur55@email.com', 'White', 'Daniel', 'mdp654', 40, 22, '2023-11-01'),
('utilisateur56@email.com', 'Harris', 'Amelia', 'pass321', 35, 18, '2023-11-01'),
('utilisateur57@email.com', 'Sanchez', 'Benjamin', 'mdp987', 34, 17, '2023-11-01'),
('utilisateur58@email.com', 'Clark', 'Ava', 'pass654', 28, 13, '2023-11-01'),
('utilisateur59@email.com', 'Ramirez', 'Henry', 'mdp321', 45, 25, '2023-11-01');


--
-- Index pour la table utilisateur
--

CREATE UNIQUE INDEX IF NOT EXISTS email_unique_idx ON utilisateur(email);

-- --------------------------------------------------------

--
-- Contraintes pour la table abonnement
--

ALTER TABLE abonnement
ADD CONSTRAINT fk_abonnement_utilisateur1_idx
FOREIGN KEY (utilisateur_id)
REFERENCES utilisateur (id);

--
-- Contraintes pour la table evaluation
--

ALTER TABLE evaluation
ADD CONSTRAINT fk_evaluation_series_idx
FOREIGN KEY (serie_id)
REFERENCES serie (id),
ADD CONSTRAINT fk_evaluation_utilisateur1_idx
FOREIGN KEY (utilisateur_id)
REFERENCES utilisateur (id),
ADD CONSTRAINT fk_evaluation_film1_idx
FOREIGN KEY (film_id)
REFERENCES film (id);

--
-- Contraintes pour la table film
--

ALTER TABLE film
ADD CONSTRAINT fk_film_genre1_idx
FOREIGN KEY (genre_id)
REFERENCES genre (id),
ADD CONSTRAINT fk_film_sortie1_idx
FOREIGN KEY (sortie_id)
REFERENCES sortie (id),
ADD CONSTRAINT fk_film_realisateur1_idx
FOREIGN KEY (realisateur_id)
REFERENCES realisateur (id);

--
-- Contraintes pour la table serie
--

ALTER TABLE serie
ADD CONSTRAINT fk_serie_sortie1_idx
FOREIGN KEY (sortie_id)
REFERENCES sortie (id),
ADD CONSTRAINT fk_serie_genre1_idx
FOREIGN KEY (genre_id)
REFERENCES genre (id),
ADD CONSTRAINT fk_serie_episode_serie1_idx
FOREIGN KEY (episodeSerie_id)
REFERENCES episode_serie (id),
ADD CONSTRAINT fk_serie_realisateur1_idx
FOREIGN KEY (realisateur_id)
REFERENCES realisateur (id);

