-- 1. Modify it to show the game, team, player, gtime for all goals scored by player 'Leandro Trossard'

    SELECT game,team,player,gtime
    FROM goal 
    WHERE player LIKE 'Leandro Trossard'

-- 2. Show the id, teamname and coach for the team with code 'BEL'

    SELECT id, teamname, coach
    FROM team
    WHERE id LIKE 'BEL'

-- 3. Show the player, gtime and teamname for every goal with goal time (gtime) less than 8 minutes.

    SELECT G.player, G.gtime, T.teamname
    FROM goal G
    JOIN team T
    ON G.team=T.id
    WHERE gtime < 8

-- 4. Show the player, teamname and coach for every goal scored by a team with coach named 'Sébastien'

    SELECT G.player, T.teamname, T.coach
    FROM team T
    JOIN goal G 
    ON T.id = G.team
    WHERE T.coach LIKE 'Sébastien%'

-- 5. For each goal by 'Harry Edward Kane' show the player, the game id and the city

    SELECT player, game, city
    FROM goal 
    JOIN game 
    ON goal.game=game.id
    WHERE player = 'Harry Edward Kane'

-- 6. List the player and team (short code) for every goal scored in 'Vancouver'
    
    SELECT player, team 
    FROM goal 
    JOIN game
    ON goal.game = game.id
    WHERE city = 'Vancouver'

-- 7. List the player and the teamname for every goal scored in 'Vancouver'

    SELECT player, teamname 
    FROM goal 
    JOIN game ON goal.game = game.id 
    JOIN team ON goal.team = team.id 
    WHERE city = 'Vancouver'

-- 8. For each team playing on 2026-07-01, show the city and the teamname



-- 9. 

-- 10.  

-- 11.  

-- 12.  

















