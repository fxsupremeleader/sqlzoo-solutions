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

        SELECT game.city, team.teamname
        FROM game
        JOIN team ON team.id = game.team1 OR team.id = game.team2
        WHERE game.played = '2026-07-01'

-- 9. For every goal scored on '2026-07-02' show the teamname, and the player who scored

        SELECT team.teamname, goal.player 
        FROM game 
        JOIN goal ON goal.game = game.id 
        JOIN team ON goal.team = team.id 
        WHERE game.played = '2026-07-02'

-- 10. For every goal scored in Mexico City show the date played, the player and that player's position (pos)

        SELECT game.played, goal.player, player.pos AS players_position
        FROM  goal 
        JOIN game ON goal.game = game.id
        JOIN player ON goal.player = player.playername
        WHERE game.city = 'Mexico City'

-- 11. For each goal scored by a defender, show the player, their teamname.

        SELECT goal.player, team.teamname
        FROM goal
        JOIN player On goal.player= player.playername
        JOIN team ON player.team= team.id
        WHERE player.pos = 'DEF'

-- 12.  For each goal scored in extra time, show the player, their position, teamname and city

        SELECT goal.player, player.pos AS position, team.teamname, game.city
        FROM goal 
        JOIN game ON goal.game=game.id
        JOIN player ON goal.player=player.playername
        JOIN team ON player.team=team.id
        WHERE goal.gtime BETWEEN 91 AND 120

