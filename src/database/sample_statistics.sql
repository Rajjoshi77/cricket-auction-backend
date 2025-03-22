USE cricket_auction_system;


-- Then insert their statistics
INSERT INTO player_statistics (
    player_id,
    matches_played,
    runs_scored,
    wickets_taken,
    batting_average,
    bowling_average,
    updated_at
) VALUES 
-- Batsmen
(1, 120, 4500, 5, 45.50, 65.20, CURRENT_TIMESTAMP),    -- Virat Kohli
(2, 95, 3200, 2, 42.10, 78.50, CURRENT_TIMESTAMP),     -- Rohit Sharma
(3, 150, 5600, 8, 48.70, 55.25, CURRENT_TIMESTAMP),    -- Kane Williamson
(4, 180, 6200, 0, 52.30, 0.00, CURRENT_TIMESTAMP),     -- MS Dhoni
(5, 110, 2800, 280, 25.45, 22.80, CURRENT_TIMESTAMP),  -- Mitchell Starc
(6, 130, 4100, 10, 38.90, 45.60, CURRENT_TIMESTAMP),   -- Ben Stokes
(7, 85, 1200, 180, 18.75, 20.40, CURRENT_TIMESTAMP),   -- Rashid Khan
(8, 140, 3800, 150, 35.20, 28.90, CURRENT_TIMESTAMP),  -- Hardik Pandya
(9, 75, 2200, 120, 28.90, 24.50, CURRENT_TIMESTAMP),   -- Jasprit Bumrah
(10, 160, 5800, 15, 49.80, 58.30, CURRENT_TIMESTAMP)   -- David Warner

ON DUPLICATE KEY UPDATE
    matches_played = VALUES(matches_played),
    runs_scored = VALUES(runs_scored),
    wickets_taken = VALUES(wickets_taken),
    batting_average = VALUES(batting_average),
    bowling_average = VALUES(bowling_average),
    updated_at = CURRENT_TIMESTAMP; 