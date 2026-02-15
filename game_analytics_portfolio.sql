-- Вопрос 1
SELECT title FROM games;

-- Вопрос 2  
SELECT title, genre FROM games;

-- Вопрос 3
SELECT SUM(hours_played) AS total FROM playtime;

-- Вопрос 4
SELECT games.title, playtime.hours_played
FROM games
INNER JOIN playtime ON games.id = playtime.game_id;

-- Вопрос 5
SELECT games.title, playtime.hours_played
FROM games
LEFT JOIN playtime ON games.id = playtime.game_id;

-- Вопрос 6
SELECT games.title, SUM(hours_played)
FROM games
LEFT JOIN playtime ON games.id = playtime.game_id
GROUP BY games.title
ORDER BY SUM(hours_played) DESC
LIMIT 1;

-- Вопрос 7
SELECT games.genre, SUM(hours_played)
FROM games
LEFT JOIN playtime ON games.id = playtime.game_id
GROUP BY games.genre
ORDER BY SUM(hours_played) DESC
LIMIT 1;

-- Вопрос 8
SELECT play_date, SUM(hours_played)
FROM playtime
GROUP BY play_date
ORDER BY SUM(hours_played) DESC
LIMIT 1;

-- Вопрос 9
SELECT games.title, ROUND(AVG(hours_played), 2) AS AVG_hours
FROM games
JOIN playtime ON games.id = playtime.game_id
GROUP BY games.title;

-- Вопрос 10
SELECT games.title, playtime.play_date, playtime.hours_played
FROM games
JOIN playtime ON games.id = playtime.game_id
WHERE hours_played < 2;