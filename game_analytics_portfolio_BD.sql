-- ============================================
-- БАЗА ДАННЫХ: game_analytics
-- АВТОР: S1zzy
-- ДАТА: 2026
-- ============================================

CREATE DATABASE IF NOT EXISTS game_analytics;
USE game_analytics;

-- ============================================
-- ТАБЛИЦА: games
-- ============================================
DROP TABLE IF EXISTS playtime;
DROP TABLE IF EXISTS games;

CREATE TABLE games (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    release_year INT
);

INSERT INTO games (title, genre, release_year) VALUES
('Cyberpunk 2077', 'RPG', 2020),
('The Witcher 3', 'RPG', 2015),
('Counter-Strike 2', 'Shooter', 2023),
('Minecraft', 'Sandbox', 2011),
('Dota 2', 'MOBA', 2013),
('Baldur''s Gate 3', 'RPG', 2023),
('Hollow Knight', 'Metroidvania', 2017);

-- ============================================
-- ТАБЛИЦА: playtime
-- ============================================
CREATE TABLE playtime (
    id INT PRIMARY KEY AUTO_INCREMENT,
    game_id INT,
    play_date DATE,
    hours_played DECIMAL(5,2),
    FOREIGN KEY (game_id) REFERENCES games(id)
);

INSERT INTO playtime (game_id, play_date, hours_played) VALUES
(1, '2026-01-15', 2.50),
(1, '2026-01-20', 3.00),
(2, '2026-01-10', 1.50),
(3, '2026-01-18', 5.00),
(4, '2026-01-22', 2.00),
(5, '2026-01-25', 4.50),
(6, '2026-01-12', 3.50);