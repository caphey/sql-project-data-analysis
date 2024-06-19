############################################################################################################

# Queries for the database

############################################################################################################

GET_ALL_HORROR_MOVIES = """
SELECT film.titre, genre.nom
FROM film
JOIN genre ON genre.id = film.genre_id
WHERE UPPER(genre.nom) = 'HORREUR'
"""

GET_ALL_MOVIES_BEFORE_DATE = """
SELECT F.titre, S.date 
FROM film F JOIN sortie S ON S.id = F.sortie_id 
WHERE EXTRACT(YEAR FROM S.date) < 2025;
"""

GET_DURATION_SERIES_BY_GENRE = """
SELECT G.nom, AVG(S.duree) AS Duree_moyenne_en_min 
FROM serie S 
JOIN genre G ON G.id = S.genre_id 
GROUP BY G.nom
ORDER BY AVG(S.duree) DESC
"""

GET_BEST_REALISATOR = """
SELECT R.nom, R.prenom, R.nombreRealisations
FROM realisateur R
ORDER BY R.nombreRealisations DESC
LIMIT 1
"""

GET_POPULAR_GENRE = """
SELECT G.nom, COALESCE(AVG(E.note), 0) AS Note_moyenne
FROM genre G
JOIN film F ON G.id = F.genre_id
JOIN serie S ON G.id = S.genre_id
JOIN evaluation E ON (F.id = E.film_id OR S.id = E.serie_id)
GROUP BY G.nom
ORDER BY Note_moyenne DESC
LIMIT 1
"""

GET_MOVIES_SERIES_WITHOUT_EVALUATION = """
SELECT F.titre
FROM film F
LEFT JOIN evaluation E ON F.id = E.film_id
WHERE E.film_id IS NULL

UNION ALL

SELECT S.titre
FROM serie S
LEFT JOIN evaluation E ON S.id = E.serie_id
WHERE E.serie_id IS NULL;
"""

############################################################################################################

# Queries for visualization

############################################################################################################

GET_ALL_MOVIES_BY_DATE = """
SELECT EXTRACT(YEAR FROM S.date) AS year, COUNT(F.titre) AS num_films
FROM film F
JOIN sortie S ON S.id = F.sortie_id
GROUP BY year
ORDER BY year;
"""

GET_MOVIES_BY_GENRE = """
SELECT genre.nom AS genre, COUNT(film.id) AS nombre_films
FROM film
JOIN genre ON film.genre_id = genre.id
GROUP BY genre.nom
ORDER BY nombre_films DESC
"""

GET_SUBSCRIPTIONS_ON_DATE = """
SELECT U.email, U.nom, U.prenom, A.dateFin
FROM utilisateur U 
JOIN abonnement A ON U.id = A.utilisateur_id 
WHERE A.dateFin >= CURRENT_DATE
"""

GET_DURATION_SERIES = """
SELECT G.nom AS genre, S.duree AS duree_serie
FROM serie S
JOIN genre G ON G.id = S.genre_id;
"""

GET_SERIES = """
SELECT titre AS serie, nombreepi as nombre_episodes, duree
FROM serie;
"""

GET_REALISATIONS_BY_REALISATOR = """
SELECT R.nom || ' ' || R.prenom as realisateur, R.nombreRealisations as nb_real
FROM realisateur R
ORDER BY R.nombreRealisations DESC
"""

GET_MEAN_NOTE_BY_GENRE = """
SELECT G.nom AS genre, COALESCE(AVG(E.note), 0) AS note_moyenne
FROM genre G
LEFT JOIN film F ON G.id = F.genre_id
LEFT JOIN serie S ON G.id = S.genre_id
LEFT JOIN evaluation E ON (F.id = E.film_id OR S.id = E.serie_id)
GROUP BY genre
ORDER BY note_moyenne DESC
LIMIT 10
"""

GET_MEAN_NOTE_BY_SERIE = """
SELECT S.titre AS serie, COALESCE(AVG(E.note), 0) AS note_moyenne
FROM serie S
LEFT JOIN evaluation E ON S.id = E.serie_id
GROUP BY serie
ORDER BY note_moyenne DESC
LIMIT 10
"""

GET_MEAN_NOTE_BY_MOVIE = """
SELECT F.titre AS film, COALESCE(AVG(E.note), 0) AS note_moyenne
FROM film F
LEFT JOIN evaluation E ON F.id = E.film_id
GROUP BY film
ORDER BY note_moyenne DESC
LIMIT 10
"""

GET_MOVIES_SERIES_WATCHED_BY_USER = """
SELECT filmsregarde, seriesregarde from utilisateur
"""

GET_EVALUATION_BY_GENRE_AND_YEAR = """
SELECT genre.nom AS genre, EXTRACT(YEAR FROM S.date) AS year, AVG(E.note) AS note_moyenne
FROM genre
JOIN film F ON genre.id = F.genre_id
JOIN sortie S ON F.sortie_id = S.id
JOIN evaluation E ON F.id = E.film_id
GROUP BY genre.nom, year
ORDER BY genre, year
"""
