-- 담당자 2171028 연가은
-- 담당자 2171087 이희원

USE team14;
SET FOREIGN_KEY_CHECKS=0;
-- TEAM
INSERT INTO team (team_id, team_name) VALUES (1609, 'Arsenal FC');
INSERT INTO team (team_id, team_name) VALUES (1610, 'Chelsea FC');
INSERT INTO team (team_id, team_name) VALUES (1624, 'Tottenham Hotspur FC');
INSERT INTO team (team_id, team_name) VALUES (1628, 'Crystal Palace FC');
INSERT INTO team (team_id, team_name) VALUES (1633, 'West Ham United FC');

-- COACH
INSERT INTO coach (coach_id, name, birth_date, birth_area, team_id ) VALUES ('7845', 'A. Wenger', '1949-10-22', 'France', '1609 ');
INSERT INTO coach (coach_id, name, birth_date, birth_area, team_id ) VALUES ('272869', 'A. Conte', '1969-07-31', 'Italy', '1610 ');
INSERT INTO coach (coach_id, name, birth_date, birth_area, team_id ) VALUES ('292863', 'M. Pochettino', '1972-03-02', 'Argentina', '1624 ');
INSERT INTO coach (coach_id, name, birth_date, birth_area, team_id ) VALUES ('3782', 'C. Shakespeare', '1963-10-26', 'England', '1624 ');
INSERT INTO coach (coach_id, name, birth_date, birth_area, team_id ) VALUES ('8357', 'R. Hodgson', '1947-08-09', 'England', '1628 ');
INSERT INTO coach (coach_id, name, birth_date, birth_area, team_id ) VALUES ('8235', 'D. Moyes', '1963-04-25', 'Scotland', '1633');

-- REFEREE
INSERT INTO referee (referee_id, name) VALUES ('381853', 'L. Mason');
INSERT INTO referee (referee_id, name) VALUES ('385911', 'A. Marriner');
INSERT INTO referee (referee_id, name) VALUES ('385915', 'N. Swarbrick');
INSERT INTO referee (referee_id, name) VALUES ('385909', 'M. Dean');
INSERT INTO referee (referee_id, name) VALUES ('385737', 'C. Kavanagh');
INSERT INTO referee (referee_id, name) VALUES ('378952', 'A. Taylor');
INSERT INTO referee (referee_id, name) VALUES ('385704', 'K. Friend');

-- MARCH_GAME
INSERT INTO match_game (game_id, game_week, date_utc, venue, referee_id) VALUES
(2500060, 35, '2018-04-22 12:30:00', 'Emirates Stadium', 381853),
(2500042, 33, '2018-04-08 15:30:00', 'Stamford Bridge', 385704),
(2500031, 32, '2018-04-01 15:00:00', 'Stamford Bridge', 385911),
(2500011, 30, '2018-03-10 17:30:00', 'Stamford Bridge', 378952),
(2499993, 28, '2018-02-25 12:00:00', 'Selhurst Park', 385704),
(2499987, 27, '2018-02-10 12:30:00', 'Wembley Stadium', 378952),
(2499961, 25, '2018-01-30 19:45:00', 'London Stadium', 385915),
(2499949, 24, '2018-01-20 15:00:00', 'Emirates Stadium', 385737),
(2499926, 21, '2018-01-04 20:00:00', 'Wembley Stadium', 385909),
(2499929, 22, '2018-01-03 19:45:00', 'Emirates Stadium', 378952);



-- match_team
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2500060, 1609, 7845, 'home', 4);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2500060, 1633, 8235, 'away', 1);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2500042, 1610, 272869, 'home', 1);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2500042, 1633, 8235, 'away', 1);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2500031, 1610, 272869, 'home', 1);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2500031, 1624, 3782, 'away', 3);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2500011, 1628, 8357, 'away', 1);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2500011, 1610, 272869, 'home', 2);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2499993, 1628, 8357, 'home', 0);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2499993, 1624, 292863, 'away', 1);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2499987, 1609, 7845, 'away', 0);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2499987, 1624, 3782, 'home', 1);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2499961, 1628, 8357, 'away', 1);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2499961, 1633, 8235, 'home', 1);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2499949, 1628, 8357, 'away', 1);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2499949, 1609, 7845, 'home', 4);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2499929, 1609, 7845, 'home', 2);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2499929, 1610, 272869, 'away', 2);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2499926, 1624, 292863, 'home', 1);
INSERT INTO match_team (game_id, team_id, coach_id, side, score) VALUES (2499926, 1633, 8235, 'away', 1);



-- player
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (48, 'J. Vertonghen', '1987-04-24', 189, 88, 'Defender', 'left', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (54, 'C. Eriksen', '1992-02-14', 180, 76, 'Midfielder', 'right', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (454, 'P. van Aanholt', '1990-08-29', 175, 67, 'Defender', 'left', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (3319, 'M. Özil', '1988-10-15', 180, 76, 'Midfielder', 'left', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (3324, 'Álvaro Morata', '1992-10-23', 189, 85, 'Forward', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (3350, 'Fàbregas', '1987-05-04', 175, 74, 'Midfielder', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (3360, 'Pedro', '1987-07-28', 167, 62, 'Forward', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (3361, 'A. Sánchez', '1988-12-19', 169, 62, 'Forward', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (3424, 'Fernando Llorente', '1985-02-26', 195, 90, 'Forward', 'right', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (3429, 'T. Courtois', '1992-05-11', 199, 94, 'Goalkeeper', 'left', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (3551, 'W. Caballero', '1981-09-28', 186, 80, 'Goalkeeper', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (3560, 'Nacho Monreal', '1986-02-26', 179, 72, 'Defender', 'left', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (3582, 'Adrián', '1987-01-03', 190, 80, 'Goalkeeper', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (7855, 'L. Koscielny', '1985-09-10', 186, 75, 'Defender', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (7870, 'A. Ramsey', '1990-12-26', 183, 76, 'Midfielder', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (7873, 'J. Wilshere', '1992-01-01', 172, 68, 'Midfielder', 'left', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (7879, 'T. Walcott', '1989-03-16', 176, 68, 'Forward', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (7882, 'P. Čech', '1982-05-20', 196, 90, 'Goalkeeper', 'left', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (7887, 'G. Cahill', '1985-12-19', 193, 86, 'Defender', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (7915, 'P. Evra', '1981-05-15', 174, 75, 'Defender', 'left', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (7941, 'J. Hernández', '1988-06-01', 175, 73, 'Forward', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (7945, 'D. Welbeck', '1990-11-26', 185, 73, 'Forward', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (7958, 'M. Kelly', '1990-04-27', 191, 77, 'Defender', 'right', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (7970, 'A. Carroll', '1989-01-06', 193, 79, 'Forward', 'left', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (7988, 'Y. Cabaye', '1986-01-14', 174, 71, 'Midfielder', 'right', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8005, 'J. Collins', '1983-08-23', 193, 90, 'Defender', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8032, 'Marcos Alonso', '1990-12-28', 188, 81, 'Defender', 'left', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8049, 'Lee Chung-Yong', '1988-07-02', 180, 69, 'Midfielder', 'right', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8301, 'J. Hart', '1987-04-19', 194, 83, 'Goalkeeper', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8313, 'P. Zabaleta', '1985-01-16', 174, 74, 'Defender', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8422, 'W. Zaha', '1992-11-10', 180, 66, 'Midfielder', 'right', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8425, 'W. Hennessey', '1987-01-24', 198, 90, 'Goalkeeper', 'right', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8471, 'A. Townsend', '1991-07-16', 181, 77, 'Midfielder', 'left', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8553, 'W. Reid', '1988-07-03', 190, 87, 'Defender', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8554, 'J. Tomkins', '1989-03-29', 192, 74, 'Defender', 'right', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8561, 'M. Noble', '1987-05-08', 180, 70, 'Midfielder', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8582, 'A. Cresswell', '1989-12-15', 170, 66, 'Defender', 'left', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8583, 'D. Delaney', '1981-07-20', 191, 89, 'Defender', 'left', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8623, 'J. McArthur', '1987-10-07', 178, 64, 'Midfielder', 'right', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8625, 'V. Moses', '1990-12-12', 177, 75, 'Midfielder', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8677, 'M. Antonio', '1990-03-28', 180, 82, 'Forward', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8717, 'H. Kane', '1993-07-28', 188, 86, 'Forward', 'right', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (8945, 'K. Trippier', '1990-09-19', 178, 72, 'Defender', 'right', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (11152, 'M. Dembélé', '1987-07-16', 185, 88, 'Midfielder', 'left', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (13484, 'D. Alli', '1996-04-11', 188, 80, 'Midfielder', 'right', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (14703, 'M. Arnautović', '1989-04-19', 192, 83, 'Forward', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (14748, 'A. Rüdiger', '1993-03-03', 191, 85, 'Defender', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (14869, 'S. Kolašinac', '1993-06-20', 183, 85, 'Defender', 'left', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (14911, 'Son Heung-Min', '1992-07-08', 183, 77, 'Forward', 'right', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (20441, 'E. Lamela', '1992-03-04', 181, 80, 'Midfielder', 'left', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (20612, 'S. Mustafi', '1992-04-17', 184, 82, 'Defender', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (20620, 'Pedro Obiang', '1992-03-27', 185, 75, 'Midfielder', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (21100, 'A. Ogbonna', '1988-05-23', 191, 86, 'Defender', 'left', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (22889, 'D. Zappacosta', '1992-06-11', 182, 70, 'Defender', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (25381, 'H. Lloris', '1986-12-26', 188, 82, 'Goalkeeper', 'left', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (25413, 'A. Lacazette', '1991-05-28', 175, 73, 'Forward', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (25553, 'Azpilicueta', '1989-08-28', 178, 75, 'Defender', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (25572, 'A. Ayew', '1989-12-17', 176, 72, 'Forward', 'left', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (25707, 'E. Hazard', '1991-01-07', 173, 74, 'Forward', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (25785, 'S. Aurier', '1992-12-24', 176, 76, 'Defender', 'right', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (25804, 'M. Sissoko', '1989-08-16', 187, 91, 'Midfielder', 'right', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (25865, 'B. Sako', '1988-04-26', 184, 90, 'Midfielder', 'left', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (25867, 'P. Aubameyang', '1989-06-18', 187, 80, 'Forward', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (26010, 'O. Giroud', '1986-09-30', 192, 88, 'Forward', 'left', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (26499, 'A. Masuaku', '1993-11-07', 179, 70, 'Defender', 'left', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (28291, 'T. Bakayoko', '1994-08-17', 184, 72, 'Midfielder', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (31528, 'N. Kanté', '1991-03-29', 168, 68, 'Midfielder', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (37725, 'C. Kouyaté', '1989-12-21', 193, 78, 'Midfielder', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (38031, 'C. Benteke', '1990-12-03', 190, 83, 'Forward', 'right', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (40765, 'Lucas Moura', '1992-08-13', 172, 72, 'Forward', 'right', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (41174, 'M. Lanzini', '1993-02-15', 167, 59, 'Midfielder', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (49876, 'G. Xhaka', '1992-09-27', 185, 82, 'Midfielder', 'left', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (55224, 'A. Sørloth', '1995-12-05', 194, 90, 'Forward', 'right', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (61967, 'V. Wanyama', '1991-06-25', 184, 87, 'Midfielder', 'right', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (70965, 'João Mário', '1993-01-19', 173, 67, 'Midfielder', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (105333, 'Willian', '1988-08-09', 175, 75, 'Midfielder', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (105338, 'H. Mkhitaryan', '1989-01-21', 177, 75, 'Midfielder', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (120339, 'Mohamed Elneny', '1992-07-11', 180, 70, 'Midfielder', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (127537, 'L. Milivojević', '1991-04-07', 186, 80, 'Midfielder', 'right', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (135103, 'A. Christensen', '1996-04-10', 188, 78, 'Defender', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (136441, 'B. Davies', '1993-04-24', 182, 76, 'Defender', 'left', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (167145, 'Bellerín', '1995-03-19', 178, 74, 'Defender', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (171283, 'C. Chambers', '1995-01-20', 182, 66, 'Defender', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (210044, 'E. Dier', '1994-01-15', 188, 90, 'Midfielder', 'right', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (224206, 'S. Byram', '1993-09-16', 180, 72, 'Defender', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (230020, 'A. Iwobi', '1996-05-03', 180, 75, 'Midfielder', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (240559, 'J. Riedewald', '1996-09-09', 182, 79, 'Defender', 'left', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (257762, 'D. Sánchez', '1996-06-12', 187, 79, 'Defender', 'right', 1624);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (265318, 'E. Fernandes', '1996-04-15', 190, 70, 'Midfielder', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (279717, 'A. Maitland-Niles', '1997-08-29', 177, 71, 'Midfielder', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (370224, 'R. Holding', '1995-09-20', 189, 75, 'Defender', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (379209, 'D. Rice', '1999-01-14', 185, 80, 'Defender', 'right', 1633);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (397098, 'R. Nelson', '1999-12-10', 176, 71, 'Midfielder', 'right', 1609);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (397168, 'T. Fosu-Mensah', '1998-01-02', 190, 79, 'Defender', 'right', 1628);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (450826, 'C. Hudson-Odoi', '2000-11-07', 182, 79, 'Midfielder', 'right', 1610);
INSERT INTO player (player_id, name, birth_date, height, weight, role, foot, team_id) VALUES (486252, 'A. Wan-Bissaka', '1997-11-26', 183, 72, 'Defender', 'right', 1628);

-- MATCH_EVENT
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('18', 'Launch', '48', '2499926', '1624', '2', '199.5648', '60', '13', '60', '13');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('297', 'Smart pass', '48', '2500031', '1624', '2', '1097.427', '96', '40', '96', '40');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('2', 'Smart pass', '54', '2499926', '1624', '1', '101.8276', '76', '56', '24', '44');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('3', 'Smart pass', '54', '2499926', '1624', '1', '180.0404', '78', '35', '78', '35');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('26', 'Smart pass', '54', '2499926', '1624', '2', '1305.569', '83', '59', '17', '41');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('160', 'Smart pass', '54', '2499987', '1624', '1', '1301.279', '68', '48', '29', '57');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('194', 'Smart pass', '54', '2499993', '1624', '1', '1976.456', '0', '0', '40', '94');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('204', 'Smart pass', '54', '2499993', '1624', '2', '664.9253', '2', '76', '90', '20');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('298', 'Smart pass', '54', '2500031', '1624', '2', '1213.039', '12', '81', '12', '81');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('400', 'Launch', '54', '2500031', '1624', '2', '2787.483', '60', '92', '40', '8');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('106', 'Launch', '454', '2499949', '1628', '2', '1565.662', '80', '66', '74', '59');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('118', 'Smart pass', '454', '2499949', '1628', '2', '2831.817', '50', '41', '18', '47');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('134', 'Smart pass', '454', '2499961', '1628', '2', '427.8265', '63', '90', '38', '9');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('205', 'Smart pass', '454', '2499993', '1628', '2', '813.8397', '74', '69', '74', '69');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('209', 'Launch', '454', '2499993', '1628', '2', '1147.431', '31', '74', '31', '74');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('213', 'Launch', '454', '2499993', '1628', '2', '2008.595', '100', '0', '15', '91');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('218', 'Launch', '454', '2499993', '1628', '2', '2930.221', '100', '100', '0', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('48', 'Smart pass', '3319', '2499929', '1609', '1', '940.3579', '59', '68', '52', '68');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('57', 'Smart pass', '3319', '2499929', '1609', '1', '2322.539', '59', '44', '41', '49');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('65', 'Smart pass', '3319', '2499929', '1609', '2', '1123.45', '29', '85', '37', '86');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('81', 'Smart pass', '3319', '2499949', '1609', '1', '993.4402', '22', '41', '27', '37');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('85', 'Smart pass', '3319', '2499949', '1609', '1', '1956.405', '11', '38', '33', '45');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('90', 'Smart pass', '3319', '2499949', '1609', '1', '2233.178', '58', '69', '41', '73');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('100', 'Smart pass', '3319', '2499949', '1609', '2', '785.8023', '51', '82', '72', '92');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('167', 'Smart pass', '3319', '2499987', '1609', '2', '844.135', '15', '39', '15', '39');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('178', 'Smart pass', '3319', '2499987', '1609', '2', '2206.988', '84', '31', '16', '69');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('45', 'Smart pass', '3324', '2499929', '1610', '1', '616.2549', '94', '40', '84', '32');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('66', 'Smart pass', '3324', '2499929', '1610', '2', '1355.28', '94', '18', '94', '28');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('321', 'Smart pass', '3324', '2500042', '1610', '1', '1571.382', '24', '60', '44', '58');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('326', 'Smart pass', '3324', '2500042', '1610', '1', '2433.975', '0', '15', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('52', 'Smart pass', '3350', '2499929', '1610', '1', '1605.303', '34', '65', '7', '71');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('60', 'Smart pass', '3350', '2499929', '1610', '2', '239.3796', '32', '14', '26', '26');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('61', 'Smart pass', '3350', '2499929', '1610', '2', '424.2077', '17', '37', '36', '51');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('68', 'Smart pass', '3350', '2499929', '1610', '2', '1462.824', '56', '72', '56', '76');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('258', 'Launch', '3350', '2500011', '1610', '1', '1169.832', '91', '71', '91', '71');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('262', 'Smart pass', '3350', '2500011', '1610', '1', '1863.771', '25', '29', '68', '67');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('314', 'Smart pass', '3350', '2500042', '1610', '1', '264.5885', '54', '97', '51', '97');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('334', 'Smart pass', '3350', '2500042', '1610', '2', '1236.416', '69', '70', '90', '83');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('337', 'Smart pass', '3350', '2500042', '1610', '2', '2125.855', '4', '62', '11', '28');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('342', 'Smart pass', '3350', '2500042', '1610', '2', '2512.887', '87', '52', '93', '52');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('49', 'Smart pass', '3361', '2499929', '1609', '1', '953.9072', '65', '27', '57', '27');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('56', 'Smart pass', '3361', '2499929', '1609', '1', '2319.899', '41', '56', '59', '51');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('59', 'Smart pass', '3361', '2499929', '1609', '1', '2381.469', '72', '91', '69', '92');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('40', 'Launch', '3429', '2499929', '1610', '1', '49.64271', '28', '44', '21', '59');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('43', 'Launch', '3429', '2499929', '1610', '1', '271.3288', '66', '74', '56', '89');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('46', 'Launch', '3429', '2499929', '1610', '1', '719.4406', '55', '29', '57', '26');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('50', 'Launch', '3429', '2499929', '1610', '1', '1154.945', '32', '6', '63', '10');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('53', 'Launch', '3429', '2499929', '1610', '1', '1825.935', '48', '22', '53', '35');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('54', 'Launch', '3429', '2499929', '1610', '1', '2065.623', '25', '41', '47', '42');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('63', 'Launch', '3429', '2499929', '1610', '2', '559.41', '26', '68', '32', '72');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('263', 'Launch', '3429', '2500011', '1610', '1', '1950.441', '33', '70', '33', '70');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('270', 'Launch', '3429', '2500011', '1610', '2', '451.1951', '30', '67', '30', '67');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('272', 'Launch', '3429', '2500011', '1610', '2', '676.2767', '44', '26', '51', '76');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('274', 'Launch', '3429', '2500011', '1610', '2', '988.8685', '64', '10', '36', '90');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('276', 'Launch', '3429', '2500011', '1610', '2', '1830.041', '97', '42', '24', '67');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('277', 'Launch', '3429', '2500011', '1610', '2', '1997.935', '67', '22', '30', '76');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('312', 'Launch', '3429', '2500042', '1610', '1', '72.49094', '32', '37', '37', '38');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('315', 'Launch', '3429', '2500042', '1610', '1', '460.6639', '18', '57', '30', '58');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('324', 'Launch', '3429', '2500042', '1610', '1', '2066.524', '39', '70', '56', '69');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('279', 'Launch', '3551', '2500031', '1610', '1', '15.82827', '90', '25', '90', '25');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('288', 'Launch', '3551', '2500031', '1610', '1', '1369.658', '100', '100', '94', '0');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('290', 'Launch', '3551', '2500031', '1610', '1', '1657.54', '22', '56', '22', '56');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('293', 'Launch', '3551', '2500031', '1610', '1', '2018.65', '88', '55', '88', '55');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('294', 'Launch', '3551', '2500031', '1610', '2', '640.3476', '0', '0', '0', '0');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('296', 'Launch', '3551', '2500031', '1610', '2', '969.5619', '35', '36', '65', '64');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('304', 'Launch', '3551', '2500031', '1610', '2', '2360.879', '0', '0', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('351', 'Launch', '3560', '2500060', '1609', '1', '1046.692', '75', '54', '61', '48');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('4', 'Launch', '3582', '2499926', '1633', '1', '197.3352', '51', '44', '51', '44');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('5', 'Launch', '3582', '2499926', '1633', '1', '760.2252', '62', '70', '62', '70');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('7', 'Launch', '3582', '2499926', '1633', '1', '1071.699', '85', '37', '85', '37');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('13', 'Launch', '3582', '2499926', '1633', '1', '1832.651', '92', '30', '4', '71');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('20', 'Launch', '3582', '2499926', '1633', '2', '408.5246', '67', '53', '67', '53');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('25', 'Launch', '3582', '2499926', '1633', '2', '1272.564', '56', '88', '44', '12');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('32', 'Launch', '3582', '2499926', '1633', '2', '2397.443', '100', '100', '100', '41');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('34', 'Launch', '3582', '2499926', '1633', '2', '2529.45', '21', '75', '79', '25');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('126', 'Launch', '3582', '2499961', '1633', '1', '1373.56', '13', '42', '13', '42');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('150', 'Launch', '3582', '2499961', '1633', '2', '2575.722', '14', '47', '25', '43');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('155', 'Launch', '3582', '2499961', '1633', '2', '2927.016', '4', '69', '26', '88');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('220', 'Launch', '3582', '2500006', '1633', '1', '417.194', '50', '46', '58', '43');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('223', 'Launch', '3582', '2500006', '1633', '1', '811.6355', '43', '96', '0', '0');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('224', 'Launch', '3582', '2500006', '1633', '1', '1642.625', '81', '38', '40', '26');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('226', 'Launch', '3582', '2500006', '1633', '1', '2088.815', '19', '65', '18', '65');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('228', 'Launch', '3582', '2500006', '1633', '1', '2262.13', '94', '11', '97', '13');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('230', 'Launch', '3582', '2500006', '1633', '1', '2580.677', '38', '31', '76', '34');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('231', 'Launch', '3582', '2500006', '1633', '1', '2722.376', '87', '59', '70', '55');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('236', 'Launch', '3582', '2500006', '1633', '2', '379.6417', '66', '47', '68', '41');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('238', 'Launch', '3582', '2500006', '1633', '2', '610.8892', '100', '70', '91', '57');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('241', 'Launch', '3582', '2500006', '1633', '2', '1751.268', '88', '45', '12', '61');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('88', 'Launch', '7855', '2499949', '1609', '1', '2106.355', '60', '38', '61', '58');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('95', 'Launch', '7855', '2499949', '1609', '2', '433.7424', '30', '56', '30', '56');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('96', 'Launch', '7855', '2499949', '1609', '2', '433.7424', '30', '56', '16', '44');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('105', 'Launch', '7855', '2499949', '1609', '2', '1526.138', '93', '92', '86', '74');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('111', 'Launch', '7855', '2499949', '1609', '2', '2090.32', '7', '63', '21', '61');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('348', 'Smart pass', '7855', '2500060', '1609', '1', '684.2738', '51', '18', '87', '31');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('344', 'Smart pass', '7870', '2500060', '1609', '1', '185.1189', '42', '44', '64', '41');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('363', 'Smart pass', '7870', '2500060', '1609', '2', '266.9287', '69', '63', '31', '37');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('367', 'Smart pass', '7870', '2500060', '1609', '2', '1173.394', '22', '78', '22', '78');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('371', 'Smart pass', '7870', '2500060', '1609', '2', '1680.88', '21', '26', '76', '78');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('73', 'Smart pass', '7873', '2499929', '1609', '2', '2580.097', '70', '47', '93', '57');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('91', 'Smart pass', '7873', '2499949', '1609', '1', '2272.666', '19', '58', '10', '68');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('109', 'Smart pass', '7873', '2499949', '1609', '2', '1989.892', '68', '59', '72', '61');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('157', 'Smart pass', '7873', '2499987', '1609', '1', '693.3071', '54', '90', '46', '10');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('162', 'Smart pass', '7873', '2499987', '1609', '1', '1973.997', '92', '34', '92', '34');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('176', 'Smart pass', '7873', '2499987', '1609', '2', '1879.67', '60', '24', '60', '24');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('179', 'Smart pass', '7873', '2499987', '1609', '2', '2461.576', '67', '58', '33', '42');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('75', 'Smart pass', '7879', '2499929', '1609', '2', '2746.356', '55', '89', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('97', 'Launch', '7882', '2499949', '1609', '2', '695.2159', '25', '26', '10', '39');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('115', 'Launch', '7882', '2499949', '1609', '2', '2437.195', '20', '19', '41', '82');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('158', 'Launch', '7882', '2499987', '1609', '1', '1181.586', '30', '76', '86', '21');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('159', 'Launch', '7882', '2499987', '1609', '1', '1231.177', '46', '69', '54', '31');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('161', 'Launch', '7882', '2499987', '1609', '1', '1787.296', '8', '62', '92', '38');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('163', 'Launch', '7882', '2499987', '1609', '1', '2435.208', '3', '67', '3', '67');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('166', 'Launch', '7882', '2499987', '1609', '2', '771.6882', '56', '28', '44', '72');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('172', 'Launch', '7882', '2499987', '1609', '2', '1374.815', '47', '7', '47', '7');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('173', 'Launch', '7882', '2499987', '1609', '2', '1534.089', '33', '74', '63', '27');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('74', 'Launch', '7887', '2499929', '1610', '2', '2635.715', '32', '89', '0', '0');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('251', 'Launch', '7887', '2500011', '1610', '1', '224.7881', '15', '47', '15', '47');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('227', 'Launch', '7915', '2500006', '1633', '1', '2177.432', '5', '81', '31', '88');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('14', 'Smart pass', '7941', '2499926', '1633', '1', '1964.036', '89', '80', '89', '80');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('222', 'Smart pass', '7941', '2500006', '1633', '1', '585.5003', '97', '41', '95', '32');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('233', 'Smart pass', '7941', '2500006', '1633', '2', '39.34898', '15', '87', '88', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('84', 'Launch', '7958', '2499949', '1628', '1', '1894.276', '27', '68', '4', '94');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('87', 'Launch', '7958', '2499949', '1628', '1', '2019.653', '7', '57', '8', '51');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('124', 'Launch', '7958', '2499961', '1628', '1', '1306.491', '12', '7', '88', '93');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('135', 'Launch', '7958', '2499961', '1628', '2', '480.3271', '17', '84', '17', '84');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('89', 'Smart pass', '7988', '2499949', '1628', '1', '2197.204', '71', '51', '96', '72');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('130', 'Smart pass', '7988', '2499961', '1628', '2', '63.4947', '100', '44', '0', '43');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('128', 'Launch', '8005', '2499961', '1633', '1', '2691.257', '95', '57', '8', '45');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('137', 'Launch', '8005', '2499961', '1633', '2', '827.572', '89', '98', '11', '2');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('140', 'Launch', '8005', '2499961', '1633', '2', '1164.207', '70', '24', '44', '91');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('69', 'Smart pass', '8032', '2499929', '1610', '2', '1669.405', '0', '29', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('311', 'Launch', '8301', '2500042', '1633', '1', '60.70137', '66', '69', '54', '76');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('313', 'Launch', '8301', '2500042', '1633', '1', '195.7254', '15', '42', '54', '46');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('316', 'Launch', '8301', '2500042', '1633', '1', '772.1133', '73', '93', '61', '97');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('323', 'Launch', '8301', '2500042', '1633', '1', '2046.243', '69', '76', '77', '69');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('327', 'Launch', '8301', '2500042', '1633', '1', '2613.787', '30', '73', '11', '78');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('333', 'Launch', '8301', '2500042', '1633', '2', '1116.352', '50', '29', '14', '35');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('335', 'Launch', '8301', '2500042', '1633', '2', '1281.585', '70', '37', '78', '36');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('340', 'Launch', '8301', '2500042', '1633', '2', '2192.885', '7', '27', '6', '41');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('345', 'Launch', '8301', '2500060', '1633', '1', '283.5624', '6', '92', '0', '0');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('349', 'Launch', '8301', '2500060', '1633', '1', '1000.135', '30', '12', '24', '42');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('350', 'Launch', '8301', '2500060', '1633', '1', '1039.782', '40', '88', '42', '89');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('353', 'Launch', '8301', '2500060', '1633', '1', '1251.03', '74', '76', '65', '75');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('355', 'Launch', '8301', '2500060', '1633', '1', '1443.841', '17', '56', '6', '67');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('356', 'Launch', '8301', '2500060', '1633', '1', '1723.85', '92', '47', '86', '36');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('358', 'Launch', '8301', '2500060', '1633', '1', '2308.992', '46', '54', '46', '54');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('362', 'Launch', '8301', '2500060', '1633', '2', '54.703', '0', '0', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('364', 'Launch', '8301', '2500060', '1633', '2', '784.6207', '100', '100', '69', '4');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('366', 'Launch', '8301', '2500060', '1633', '2', '913.7178', '66', '24', '39', '79');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('376', 'Launch', '8301', '2500060', '1633', '2', '2451.569', '28', '66', '72', '34');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('378', 'Launch', '8301', '2500060', '1633', '2', '2885.31', '89', '34', '27', '68');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('22', 'Launch', '8313', '2499926', '1633', '2', '558.6441', '31', '81', '83', '21');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('33', 'Launch', '8313', '2499926', '1633', '2', '2470.539', '88', '24', '12', '76');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('138', 'Launch', '8313', '2499961', '1633', '2', '1017.193', '10', '71', '93', '30');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('152', 'Launch', '8313', '2499961', '1633', '2', '2840.365', '11', '65', '26', '43');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('225', 'Launch', '8313', '2500006', '1633', '1', '1987.573', '86', '81', '97', '75');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('232', 'Launch', '8313', '2500006', '1633', '1', '2912.237', '96', '63', '88', '62');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('104', 'Smart pass', '8422', '2499949', '1628', '2', '1308.689', '41', '45', '44', '47');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('129', 'Smart pass', '8422', '2499961', '1628', '1', '2738.86', '11', '71', '11', '71');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('141', 'Smart pass', '8422', '2499961', '1628', '2', '1196.19', '65', '25', '65', '25');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('148', 'Smart pass', '8422', '2499961', '1628', '2', '2016.316', '38', '35', '0', '20');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('77', 'Launch', '8425', '2499949', '1628', '1', '132.6015', '16', '12', '48', '4');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('80', 'Launch', '8425', '2499949', '1628', '1', '820.6629', '3', '45', '13', '38');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('83', 'Launch', '8425', '2499949', '1628', '1', '1447.165', '98', '43', '43', '30');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('102', 'Launch', '8425', '2499949', '1628', '2', '998.926', '45', '47', '58', '64');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('103', 'Launch', '8425', '2499949', '1628', '2', '1065.661', '22', '76', '5', '74');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('110', 'Launch', '8425', '2499949', '1628', '2', '2070.793', '61', '10', '48', '54');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('114', 'Launch', '8425', '2499949', '1628', '2', '2138.047', '0', '59', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('117', 'Launch', '8425', '2499949', '1628', '2', '2682.697', '22', '49', '0', '0');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('120', 'Launch', '8425', '2499961', '1628', '1', '424.3218', '95', '78', '95', '78');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('122', 'Launch', '8425', '2499961', '1628', '1', '446.3362', '64', '89', '36', '11');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('139', 'Launch', '8425', '2499961', '1628', '2', '1037.865', '6', '55', '6', '55');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('144', 'Launch', '8425', '2499961', '1628', '2', '1680.27', '93', '35', '97', '35');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('153', 'Launch', '8425', '2499961', '1628', '2', '2853.305', '50', '70', '66', '59');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('181', 'Launch', '8425', '2499993', '1628', '1', '52.90833', '5', '58', '5', '58');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('186', 'Launch', '8425', '2499993', '1628', '1', '791.091', '80', '11', '80', '11');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('187', 'Launch', '8425', '2499993', '1628', '1', '970.6151', '0', '0', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('188', 'Launch', '8425', '2499993', '1628', '1', '1041.524', '5', '85', '5', '85');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('198', 'Launch', '8425', '2499993', '1628', '1', '2404.214', '24', '29', '76', '66');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('202', 'Launch', '8425', '2499993', '1628', '2', '577.1272', '75', '51', '75', '51');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('255', 'Launch', '8425', '2500011', '1628', '1', '1081.84', '63', '67', '10', '47');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('257', 'Launch', '8425', '2500011', '1628', '1', '1164.888', '72', '82', '72', '82');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('261', 'Launch', '8425', '2500011', '1628', '1', '1649.419', '90', '42', '10', '58');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('269', 'Launch', '8425', '2500011', '1628', '2', '156.0715', '66', '13', '66', '13');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('143', 'Launch', '8471', '2499961', '1628', '2', '1499.547', '10', '63', '8', '78');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('197', 'Launch', '8471', '2499993', '1628', '1', '2289.814', '56', '71', '44', '29');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('200', 'Smart pass', '8471', '2499993', '1628', '1', '2745.607', '93', '80', '93', '80');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('208', 'Smart pass', '8471', '2499993', '1628', '2', '1043.992', '0', '10', '0', '10');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('249', 'Launch', '8471', '2500011', '1628', '1', '83.82224', '65', '94', '5', '18');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('27', 'Launch', '8553', '2499926', '1633', '2', '1378.24', '31', '79', '80', '11');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('37', 'Launch', '8553', '2499926', '1633', '2', '2699.537', '94', '35', '6', '65');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('86', 'Launch', '8554', '2499949', '1628', '1', '1961.595', '33', '45', '7', '40');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('189', 'Launch', '8554', '2499993', '1628', '1', '1214.625', '83', '92', '17', '8');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('207', 'Launch', '8554', '2499993', '1628', '2', '823.6828', '24', '60', '24', '60');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('210', 'Launch', '8554', '2499993', '1628', '2', '1260.187', '51', '45', '51', '45');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('28', 'Launch', '8561', '2499926', '1633', '2', '1664.702', '91', '69', '91', '69');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('142', 'Launch', '8561', '2499961', '1633', '2', '1379.71', '60', '89', '83', '74');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('372', 'Launch', '8561', '2500060', '1633', '2', '1805.032', '30', '27', '30', '27');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('121', 'Launch', '8582', '2499961', '1633', '1', '430.6631', '38', '9', '63', '91');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('151', 'Launch', '8582', '2499961', '1633', '2', '2596.546', '100', '30', '94', '42');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('219', 'Smart pass', '8582', '2500006', '1633', '1', '22.23169', '7', '32', '26', '9');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('235', 'Launch', '8582', '2500006', '1633', '2', '280.9596', '35', '26', '61', '16');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('375', 'Launch', '8582', '2500060', '1633', '2', '2286.225', '99', '32', '99', '32');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('217', 'Launch', '8583', '2499993', '1628', '2', '2883.614', '60', '94', '40', '6');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('93', 'Smart pass', '8623', '2499949', '1628', '2', '69.12745', '51', '12', '4', '36');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('183', 'Launch', '8623', '2499993', '1628', '1', '342.114', '65', '63', '65', '63');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('252', 'Launch', '8623', '2500011', '1628', '1', '455.7335', '95', '75', '95', '75');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('253', 'Launch', '8623', '2500011', '1628', '1', '724.882', '90', '88', '90', '88');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('266', 'Launch', '8623', '2500011', '1628', '1', '2452.952', '48', '75', '48', '75');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('278', 'Smart pass', '8623', '2500011', '1628', '2', '2229.299', '54', '93', '57', '94');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('41', 'Launch', '8625', '2499929', '1610', '1', '228.527', '21', '45', '25', '49');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('47', 'Launch', '8625', '2499929', '1610', '1', '794.1644', '71', '69', '55', '71');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('240', 'Launch', '8677', '2500006', '1633', '2', '1590.496', '82', '30', '78', '33');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('242', 'Launch', '8677', '2500006', '1633', '2', '1758.566', '55', '87', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('245', 'Smart pass', '8677', '2500006', '1633', '2', '2246.17', '2', '13', '5', '3');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('184', 'Smart pass', '8717', '2499993', '1624', '1', '395.5208', '43', '8', '57', '92');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('17', 'Smart pass', '13484', '2499926', '1624', '1', '2479.145', '14', '38', '86', '62');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('23', 'Smart pass', '13484', '2499926', '1624', '2', '714.6378', '0', '0', '44', '10');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('195', 'Smart pass', '13484', '2499993', '1624', '1', '2243.711', '6', '70', '6', '70');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('216', 'Smart pass', '13484', '2499993', '1624', '2', '2780.114', '66', '27', '66', '27');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('286', 'Smart pass', '13484', '2500031', '1624', '1', '969.9645', '88', '91', '88', '91');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('291', 'Smart pass', '13484', '2500031', '1624', '1', '1883.476', '91', '87', '91', '87');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('243', 'Smart pass', '14703', '2500006', '1633', '2', '1771.299', '10', '14', '7', '4');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('331', 'Smart pass', '14703', '2500042', '1633', '2', '875.1496', '76', '24', '81', '28');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('322', 'Launch', '14748', '2500042', '1610', '1', '2012.649', '95', '97', '50', '89');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('328', 'Launch', '14748', '2500042', '1610', '1', '2654.654', '62', '94', '66', '88');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('6', 'Smart pass', '14911', '2499926', '1624', '1', '1063.96', '77', '18', '24', '78');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('8', 'Smart pass', '14911', '2499926', '1624', '1', '1238.826', '55', '73', '45', '27');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('9', 'Smart pass', '14911', '2499926', '1624', '1', '1280.572', '10', '29', '10', '29');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('170', 'Smart pass', '14911', '2499987', '1624', '2', '1197.372', '73', '31', '26', '68');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('283', 'Smart pass', '14911', '2500031', '1624', '1', '677.445', '38', '60', '38', '60');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('299', 'Smart pass', '14911', '2500031', '1624', '2', '1217.673', '20', '64', '98', '23');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('31', 'Smart pass', '20441', '2499926', '1624', '2', '2044.46', '14', '32', '80', '73');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('36', 'Smart pass', '20441', '2499926', '1624', '2', '2632.814', '33', '76', '33', '76');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('182', 'Smart pass', '20441', '2499993', '1624', '1', '267.6542', '52', '42', '52', '42');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('191', 'Smart pass', '20441', '2499993', '1624', '1', '1705.851', '49', '29', '39', '54');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('199', 'Launch', '20441', '2499993', '1624', '1', '2515.249', '74', '78', '74', '78');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('51', 'Smart pass', '20612', '2499929', '1609', '1', '1533.766', '1', '98', '45', '95');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('156', 'Launch', '20612', '2499987', '1609', '1', '68.06826', '33', '30', '33', '30');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('131', 'Launch', '21100', '2499961', '1633', '2', '378.8989', '86', '63', '86', '63');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('132', 'Launch', '21100', '2499961', '1633', '2', '406.1277', '89', '37', '26', '57');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('146', 'Launch', '21100', '2499961', '1633', '2', '1935.858', '41', '79', '50', '73');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('318', 'Launch', '21100', '2500042', '1633', '1', '1185.519', '76', '49', '82', '47');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('1', 'Launch', '25381', '2499926', '1624', '1', '69.31481', '94', '49', '94', '49');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('11', 'Launch', '25381', '2499926', '1624', '1', '1710.776', '4', '31', '96', '69');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('15', 'Launch', '25381', '2499926', '1624', '1', '2028.599', '72', '58', '72', '58');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('38', 'Launch', '25381', '2499926', '1624', '2', '2938.889', '100', '26', '0', '74');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('169', 'Launch', '25381', '2499987', '1624', '2', '867.6241', '34', '60', '34', '60');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('171', 'Launch', '25381', '2499987', '1624', '2', '1264.088', '64', '46', '64', '46');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('175', 'Launch', '25381', '2499987', '1624', '2', '1791.487', '66', '69', '66', '69');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('281', 'Launch', '25381', '2500031', '1624', '1', '104.5971', '19', '66', '81', '34');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('282', 'Launch', '25381', '2500031', '1624', '1', '654.3903', '38', '72', '70', '25');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('284', 'Launch', '25381', '2500031', '1624', '1', '741.4036', '56', '26', '56', '26');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('285', 'Launch', '25381', '2500031', '1624', '1', '867.6025', '10', '37', '10', '37');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('292', 'Launch', '25381', '2500031', '1624', '1', '1996.284', '26', '43', '26', '43');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('306', 'Launch', '25381', '2500031', '1624', '2', '2632.643', '16', '84', '84', '16');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('58', 'Smart pass', '25413', '2499929', '1609', '1', '2367.957', '100', '100', '87', '92');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('107', 'Smart pass', '25413', '2499949', '1609', '2', '1783.516', '100', '100', '42', '88');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('365', 'Smart pass', '25413', '2500060', '1609', '2', '835.311', '35', '26', '35', '26');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('259', 'Smart pass', '25553', '2500011', '1610', '1', '1261.296', '70', '21', '70', '21');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('260', 'Smart pass', '25553', '2500011', '1610', '1', '1555.547', '33', '54', '33', '54');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('267', 'Smart pass', '25553', '2500011', '1610', '1', '2572.656', '76', '31', '24', '69');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('310', 'Smart pass', '25553', '2500031', '1610', '2', '2888.247', '59', '34', '23', '62');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('317', 'Smart pass', '25553', '2500042', '1610', '1', '1180.389', '95', '77', '84', '69');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('330', 'Launch', '25553', '2500042', '1610', '2', '738.0324', '53', '70', '45', '78');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('30', 'Smart pass', '25572', '2499926', '1633', '2', '1767.79', '100', '100', '61', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('67', 'Smart pass', '25707', '2499929', '1610', '2', '1426.653', '28', '70', '21', '74');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('250', 'Smart pass', '25707', '2500011', '1610', '1', '194.9391', '95', '26', '95', '26');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('256', 'Smart pass', '25707', '2500011', '1610', '1', '1149.197', '85', '74', '85', '74');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('264', 'Smart pass', '25707', '2500011', '1610', '1', '1958.029', '60', '51', '60', '51');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('268', 'Smart pass', '25707', '2500011', '1610', '1', '2715.241', '10', '20', '10', '20');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('302', 'Smart pass', '25707', '2500031', '1610', '2', '1880.726', '55', '8', '55', '8');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('319', 'Smart pass', '25707', '2500042', '1610', '1', '1404.48', '89', '47', '100', '42');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('325', 'Smart pass', '25707', '2500042', '1610', '1', '2110.525', '11', '84', '16', '95');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('329', 'Smart pass', '25707', '2500042', '1610', '2', '322.6796', '13', '67', '9', '67');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('338', 'Smart pass', '25707', '2500042', '1610', '2', '2131.553', '24', '73', '29', '73');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('24', 'Smart pass', '25785', '2499926', '1624', '2', '1017.13', '91', '74', '4', '26');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('193', 'Smart pass', '25785', '2499993', '1624', '1', '1757.319', '76', '55', '76', '55');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('12', 'Launch', '25804', '2499926', '1624', '1', '1823.285', '96', '29', '7', '67');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('101', 'Smart pass', '25865', '2499949', '1628', '2', '880.0953', '19', '58', '28', '45');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('123', 'Launch', '25865', '2499961', '1628', '1', '697.4717', '100', '29', '100', '29');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('370', 'Smart pass', '25867', '2500060', '1609', '2', '1556.444', '55', '79', '55', '79');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('374', 'Launch', '25867', '2500060', '1609', '2', '2278.19', '8', '64', '92', '69');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('379', 'Smart pass', '25867', '2500060', '1609', '2', '2902.131', '45', '7', '45', '7');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('271', 'Smart pass', '26010', '2500011', '1610', '2', '554.4637', '68', '65', '68', '65');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('309', 'Smart pass', '26010', '2500031', '1610', '2', '2854.644', '11', '63', '11', '63');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('19', 'Launch', '26499', '2499926', '1633', '2', '391.8847', '20', '31', '20', '31');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('336', 'Launch', '26499', '2500042', '1633', '2', '2109.243', '100', '12', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('339', 'Launch', '26499', '2500042', '1633', '2', '2136.21', '30', '19', '46', '29');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('70', 'Smart pass', '28291', '2499929', '1610', '2', '1988.584', '57', '30', '44', '31');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('254', 'Smart pass', '31528', '2500011', '1610', '1', '864.7033', '7', '84', '7', '84');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('300', 'Smart pass', '31528', '2500031', '1610', '2', '1556.427', '15', '55', '15', '55');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('320', 'Smart pass', '31528', '2500042', '1610', '1', '1475.613', '46', '27', '71', '22');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('29', 'Smart pass', '37725', '2499926', '1633', '2', '1763.42', '63', '95', '63', '95');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('149', 'Launch', '37725', '2499961', '1633', '2', '2318.601', '81', '15', '92', '75');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('247', 'Launch', '37725', '2500006', '1633', '2', '2525.709', '19', '52', '20', '52');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('368', 'Launch', '37725', '2500060', '1633', '2', '1397.069', '100', '100', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('94', 'Smart pass', '38031', '2499949', '1628', '2', '331.6805', '79', '40', '90', '43');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('112', 'Smart pass', '38031', '2499949', '1628', '2', '2117.896', '92', '67', '100', '66');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('125', 'Smart pass', '38031', '2499961', '1628', '1', '1351.421', '86', '33', '86', '33');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('215', 'Smart pass', '40765', '2499993', '1624', '2', '2401.666', '9', '88', '9', '88');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('221', 'Smart pass', '41174', '2500006', '1633', '1', '569.5096', '91', '64', '89', '88');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('237', 'Smart pass', '41174', '2500006', '1633', '2', '490.583', '62', '23', '15', '41');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('239', 'Smart pass', '41174', '2500006', '1633', '2', '699.8935', '11', '84', '30', '81');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('248', 'Smart pass', '41174', '2500006', '1633', '2', '2693.134', '67', '65', '72', '75');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('76', 'Smart pass', '49876', '2499929', '1609', '2', '2876.693', '68', '32', '94', '34');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('82', 'Smart pass', '49876', '2499949', '1609', '1', '1142.789', '49', '64', '37', '68');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('99', 'Smart pass', '49876', '2499949', '1609', '2', '746.443', '30', '52', '19', '41');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('113', 'Smart pass', '49876', '2499949', '1609', '2', '2130.867', '89', '20', '90', '32');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('168', 'Smart pass', '49876', '2499987', '1609', '2', '865.0054', '65', '71', '65', '71');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('352', 'Smart pass', '49876', '2500060', '1609', '1', '1115.063', '97', '72', '79', '67');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('373', 'Smart pass', '49876', '2500060', '1609', '2', '1933.217', '15', '94', '85', '12');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('377', 'Smart pass', '49876', '2500060', '1609', '2', '2860.812', '52', '76', '48', '24');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('206', 'Smart pass', '55224', '2499993', '1628', '2', '815.9928', '55', '64', '55', '64');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('275', 'Smart pass', '55224', '2500011', '1628', '2', '1417.603', '33', '20', '69', '88');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('185', 'Smart pass', '61967', '2499993', '1624', '1', '602.59', '22', '40', '22', '40');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('127', 'Smart pass', '70965', '2499961', '1633', '1', '2478.016', '0', '0', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('347', 'Smart pass', '70965', '2500060', '1633', '1', '626.3025', '9', '28', '9', '40');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('265', 'Smart pass', '105333', '2500011', '1610', '1', '2408.694', '95', '62', '95', '62');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('273', 'Smart pass', '105333', '2500011', '1610', '2', '720.0768', '32', '5', '68', '95');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('287', 'Smart pass', '105333', '2500031', '1610', '1', '1088.259', '0', '0', '100', '27');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('295', 'Smart pass', '105333', '2500031', '1610', '2', '796.0216', '70', '67', '32', '45');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('301', 'Smart pass', '105333', '2500031', '1610', '2', '1575.448', '56', '53', '56', '53');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('332', 'Smart pass', '105333', '2500042', '1610', '2', '985.8949', '72', '47', '73', '34');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('343', 'Smart pass', '105333', '2500042', '1610', '2', '2628.548', '94', '72', '75', '57');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('360', 'Launch', '120339', '2500060', '1609', '1', '2408.078', '12', '91', '12', '91');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('108', 'Launch', '127537', '2499949', '1628', '2', '1823.844', '81', '61', '67', '66');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('116', 'Smart pass', '127537', '2499949', '1628', '2', '2471.354', '23', '54', '10', '59');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('119', 'Smart pass', '127537', '2499961', '1628', '1', '156.9105', '17', '65', '90', '32');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('136', 'Smart pass', '127537', '2499961', '1628', '2', '777.1631', '56', '58', '56', '58');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('154', 'Launch', '127537', '2499961', '1628', '2', '2918.435', '31', '39', '27', '64');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('212', 'Launch', '127537', '2499993', '1628', '2', '1532.347', '53', '81', '47', '19');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('280', 'Launch', '135103', '2500031', '1610', '1', '40.66817', '13', '15', '13', '15');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('21', 'Smart pass', '136441', '2499926', '1624', '2', '555.0733', '25', '81', '69', '19');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('177', 'Launch', '136441', '2499987', '1624', '2', '2168.323', '0', '0', '31', '2');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('201', 'Launch', '136441', '2499993', '1624', '2', '366.6977', '78', '66', '78', '66');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('303', 'Smart pass', '136441', '2500031', '1624', '2', '2315.651', '53', '70', '48', '29');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('42', 'Smart pass', '167145', '2499929', '1609', '1', '266.7556', '50', '91', '66', '74');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('64', 'Smart pass', '167145', '2499929', '1609', '2', '969.0868', '53', '80', '43', '75');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('79', 'Smart pass', '167145', '2499949', '1609', '1', '725.6988', '78', '72', '76', '70');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('164', 'Smart pass', '167145', '2499987', '1609', '1', '2611.394', '74', '44', '74', '44');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('174', 'Launch', '167145', '2499987', '1609', '2', '1775.025', '85', '46', '15', '54');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('346', 'Smart pass', '167145', '2500060', '1609', '1', '430.8735', '8', '42', '15', '80');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('359', 'Launch', '167145', '2500060', '1609', '1', '2403.026', '61', '29', '39', '68');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('44', 'Launch', '171283', '2499929', '1609', '1', '549.7373', '3', '99', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('62', 'Smart pass', '171283', '2499929', '1609', '2', '501.6709', '22', '21', '25', '0');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('72', 'Smart pass', '171283', '2499929', '1609', '2', '2499.568', '17', '65', '23', '65');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('145', 'Launch', '224206', '2499961', '1633', '2', '1685.951', '78', '62', '62', '71');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('147', 'Launch', '224206', '2499961', '1633', '2', '1961.668', '42', '11', '36', '26');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('229', 'Launch', '224206', '2500006', '1633', '1', '2318.779', '81', '66', '66', '55');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('246', 'Smart pass', '224206', '2500006', '1633', '2', '2381.755', '7', '21', '9', '21');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('78', 'Smart pass', '230020', '2499949', '1609', '1', '551.7138', '89', '5', '87', '0');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('92', 'Smart pass', '230020', '2499949', '1609', '1', '2311.064', '66', '39', '85', '29');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('98', 'Smart pass', '230020', '2499949', '1609', '2', '727.3273', '34', '17', '28', '12');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('180', 'Smart pass', '230020', '2499987', '1609', '2', '2845.064', '100', '38', '0', '0');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('354', 'Smart pass', '230020', '2500060', '1609', '1', '1349.417', '70', '74', '70', '75');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('357', 'Smart pass', '230020', '2500060', '1609', '1', '1823.652', '9', '12', '7', '11');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('16', 'Launch', '257762', '2499926', '1624', '1', '2203.583', '93', '31', '93', '31');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('35', 'Launch', '257762', '2499926', '1624', '2', '2614.569', '8', '47', '92', '53');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('165', 'Launch', '257762', '2499987', '1624', '2', '759.8221', '51', '72', '56', '28');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('211', 'Launch', '257762', '2499993', '1624', '2', '1529.019', '29', '81', '71', '19');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('289', 'Launch', '257762', '2500031', '1624', '1', '1578.198', '15', '57', '15', '57');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('55', 'Smart pass', '279717', '2499929', '1609', '1', '2112.792', '39', '17', '40', '22');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('361', 'Launch', '279717', '2500060', '1609', '1', '2804.401', '16', '56', '16', '56');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('369', 'Smart pass', '279717', '2500060', '1609', '2', '1425.543', '0', '0', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('71', 'Smart pass', '370224', '2499929', '1609', '2', '2229.872', '57', '52', '62', '60');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('10', 'Launch', '379209', '2499926', '1633', '1', '1326.86', '28', '48', '28', '48');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('39', 'Launch', '379209', '2499926', '1633', '2', '2944.377', '0', '0', '0', '74');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('133', 'Launch', '379209', '2499961', '1633', '2', '416.5771', '60', '91', '40', '9');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('234', 'Launch', '379209', '2500006', '1633', '2', '104.2324', '0', '43', '100', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('244', 'Launch', '379209', '2500006', '1633', '2', '2038.585', '47', '18', '81', '25');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('341', 'Launch', '379209', '2500042', '1633', '2', '2374.11', '71', '47', '39', '44');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('192', 'Launch', '397168', '2499993', '1628', '1', '1709.909', '100', '17', '0', '83');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('203', 'Launch', '397168', '2499993', '1628', '2', '596.435', '12', '30', '12', '30');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('214', 'Launch', '397168', '2499993', '1628', '2', '2274.11', '50', '30', '50', '30');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('305', 'Smart pass', '450826', '2500031', '1610', '2', '2614.097', '21', '96', '87', '15');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('307', 'Smart pass', '450826', '2500031', '1610', '2', '2786.419', '0', '0', '98', '100');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('190', 'Launch', '486252', '2499993', '1628', '1', '1253.987', '98', '61', '98', '61');
INSERT INTO match_event (event_id, event_name, player_id, game_id, team_id, period_id, event_sec, pos_orig_y, pos_orig_x, pos_dest_y, pos_dest_x) VALUES ('196', 'Launch', '486252', '2499993', '1628', '1', '2245.393', '6', '64', '94', '36');


-- ACITON_LOG
INSERT INTO action_log (action_id, game_id, period_id, time_seconds, team_id, player_id, start_x, start_y, end_x, end_y, type_name, result_name) VALUES
  (1,2500060,1,77.77308,1609,120339,61.95,57.80,58.80,52.36,'interception','success'),
  (2,2500060,1,106.22470,1609,7870,51.45,28.56,35.70,28.56,'dribble','success'),
  (3,2500060,1,184.29770,1609,7870,48.30,17.68,68.25,10.88,'dribble','success'),
  (4,2500060,1,198.62220,1609,7870,34.65,13.60,34.65,13.60,'interception','success'),
  (5,2500060,1,245.40200,1609,7855,71.40,12.24,71.40,12.24,'interception','success'),
  (6,2500060,1,250.81410,1633,265318,47.25,55.76,63.00,48.28,'dribble','success'),
  (7,2500060,1,263.72770,1609,49876,69.30,42.84,49.35,33.32,'dribble','success'),
  (8,2500060,1,305.98850,1609,7855,66.15,21.76,49.35,15.64,'dribble','success'),
  (9,2500060,1,662.36830,1609,20612,71.40,46.24,61.95,47.60,'dribble','success'),
  (10,2500060,1,681.82360,1609,7855,50.40,19.72,44.10,16.32,'dribble','success'),
  (11,2500060,1,717.98420,1633,14703,33.60,47.60,27.30,53.04,'dribble','success'),
  (12,2500060,1,724.48250,1633,70965,18.90,35.36,0.00,37.40,'shot','fail'),
  (13,2500060,1,772.01070,1609,230020,38.85,48.28,50.40,51.68,'dribble','success'),
  (14,2500060,1,783.78870,1609,7870,34.65,27.20,28.35,23.80,'dribble','success'),
  (15,2500060,1,823.24820,1633,70965,79.80,50.32,76.65,35.36,'dribble','success'),
  (16,2500060,1,842.86760,1633,14703,30.45,17.68,7.35,21.76,'dribble','success'),
  (17,2500060,1,1070.54900,1609,167145,39.90,53.04,30.45,50.32,'dribble','success'),
  (18,2500060,1,1084.61600,1609,25413,22.05,43.52,30.45,45.56,'dribble','success'),
  (19,2500060,1,1115.93100,1633,265318,80.85,54.40,80.85,54.40,'interception','success'),
  (20,2500060,1,1118.17800,1633,8313,87.15,45.56,79.80,53.72,'dribble','success'),
  (21,2500060,1,1209.69100,1633,14703,12.60,44.88,10.50,47.60,'dribble','success'),
  (22,2500060,1,1213.16300,1633,265318,24.15,47.60,0.00,34.00,'shot','fail'),
  (23,2500060,1,1355.27700,1609,167145,12.60,38.08,0.00,27.20,'shot','fail'),
  (24,2500060,1,1428.59600,1609,7870,25.20,53.04,14.70,56.44,'dribble','success'),
  (25,2500060,1,1479.35600,1609,7945,25.20,13.60,25.20,21.76,'dribble','success'),
  (26,2500060,1,1481.30000,1609,7945,25.20,21.76,0.00,40.80,'shot','fail'),
  (27,2500060,1,1526.00000,1609,49876,75.60,10.88,76.65,17.00,'dribble','success'),
  (28,2500060,1,1697.54600,1633,8561,42.00,26.52,42.00,26.52,'interception','success'),
  (29,2500060,1,1740.64100,1609,120339,73.50,31.28,56.70,29.24,'dribble','success'),
  (30,2500060,1,1751.64100,1609,120339,67.20,14.96,48.30,17.68,'dribble','success'),
  (31,2500060,1,1825.25500,1633,8313,77.70,53.04,76.65,55.08,'interception','success'),
  (32,2500060,1,1857.60600,1609,7945,32.55,33.32,24.15,40.12,'dribble','success'),
  (33,2500060,1,1858.95400,1609,7945,24.15,40.12,0.00,27.20,'shot','fail'),
  (34,2500060,1,1897.13800,1633,8561,33.60,50.32,46.20,40.12,'dribble','success'),
  (35,2500060,1,1941.58300,1609,7855,66.15,16.32,42.00,15.64,'dribble','success'),
  (36,2500060,1,2068.17500,1609,49876,82.95,18.36,69.30,26.52,'dribble','success'),
  (37,2500060,1,2311.71000,1633,14703,29.40,56.44,26.25,57.12,'dribble','success'),
  (38,2500060,1,2364.35900,1609,120339,57.75,30.60,37.80,23.12,'dribble','success'),
  (39,2500060,1,2757.48400,1609,7945,44.10,13.60,32.55,10.20,'dribble','success'),
  (40,2500060,1,2804.40100,1609,279717,74.55,30.60,74.55,30.60,'interception','success'),
  (41,2500060,1,2903.75200,1609,7855,76.65,22.44,76.65,22.44,'interception','success'),
  (42,2500060,1,2911.91100,1609,230020,44.10,48.28,42.00,29.24,'dribble','success'),
  (43,2500060,1,2955.96800,1609,7855,46.20,17.00,39.90,11.56,'dribble','success'),
  (44,2500060,1,2980.83900,1609,7870,14.70,42.16,0.00,40.80,'shot','fail'),
  (45,2500060,2,119.94160,1609,230020,29.40,44.88,26.25,43.52,'dribble','success'),
  (46,2500060,2,147.45630,1609,25413,12.60,52.36,8.40,53.04,'dribble','success'),
  (47,2500060,2,153.42280,1609,3560,10.50,31.28,0.00,34.00,'shot','fail'),
  (48,2500060,2,339.76350,1609,3560,12.60,34.00,0.00,30.60,'shot','success'),
  (49,2500060,2,410.57370,1609,49876,75.60,16.32,75.60,16.32,'interception','success'),
  (50,2500060,2,430.10790,1609,279717,77.70,32.64,77.70,32.64,'interception','success'),
  (51,2500060,2,432.67740,1609,230020,76.65,45.56,57.75,51.68,'dribble','success'),
  (52,2500060,2,440.15450,1609,230020,12.60,57.80,3.15,48.28,'dribble','success'),
  (53,2500060,2,588.41760,1609,230020,24.15,36.72,24.15,36.72,'shot','fail'),
  (54,2500060,2,616.69900,1609,7870,26.25,41.48,26.25,41.48,'shot','fail'),
  (55,2500060,2,670.47810,1609,49876,73.50,31.28,56.70,34.68,'dribble','success'),
  (56,2500060,2,680.36870,1609,7870,12.60,44.20,0.00,40.80,'shot','fail'),
  (57,2500060,2,722.68560,1633,70965,36.75,28.56,35.70,33.32,'dribble','success'),
  (58,2500060,2,801.17530,1609,279717,63.00,48.28,63.00,48.28,'interception','success'),
  (59,2500060,2,803.75350,1609,279717,56.70,40.80,44.10,45.56,'dribble','success'),
  (60,2500060,2,981.24720,1609,279717,59.85,18.36,54.60,24.48,'dribble','success'),
  (61,2500060,2,1060.85000,1633,8561,17.85,34.00,17.85,34.00,'shot','fail'),
  (62,2500060,2,1089.08400,1633,37725,30.45,37.40,30.45,37.40,'shot','fail'),
  (63,2500060,2,1093.11300,1633,14703,10.50,23.80,0.00,37.40,'shot','success'),
  (64,2500060,2,1167.50400,1609,7870,49.35,12.92,26.25,17.00,'dribble','success'),
  (65,2500060,2,1176.61100,1633,8313,85.05,50.32,71.40,43.52,'dribble','success'),
  (66,2500060,2,1180.82600,1609,167145,49.35,34.68,49.35,34.68,'interception','success'),
  (67,2500060,2,1227.00900,1609,3560,45.15,10.88,45.15,10.88,'interception','success'),
  (68,2500060,2,1390.72000,1609,25413,21.00,44.88,25.20,42.16,'dribble','success'),
  (69,2500060,2,1444.01500,1633,26499,79.80,12.24,75.60,12.92,'dribble','success'),
  (70,2500060,2,1552.40500,1609,25867,28.35,12.24,32.55,17.68,'dribble','success'),
  (71,2500060,2,1599.68700,1633,379209,78.75,39.44,78.75,39.44,'interception','success'),
  (72,2500060,2,1613.27200,1609,49876,30.45,25.84,26.25,23.80,'dribble','success'),
  (73,2500060,2,1614.73700,1609,49876,26.25,23.80,0.00,37.40,'shot','fail'),
  (74,2500060,2,1672.89300,1633,37725,48.30,19.72,50.40,27.88,'dribble','success'),
  (75,2500060,2,1682.63700,1633,8582,77.70,17.00,74.55,10.88,'interception','success'),
  (76,2500060,2,1726.39800,1609,3560,80.85,12.24,80.85,12.24,'interception','success'),
  (77,2500060,2,1771.23300,1633,41174,84.00,20.40,84.00,20.40,'interception','success'),
  (78,2500060,2,1774.29200,1609,7945,13.65,51.68,11.55,46.24,'interception','success'),
  (79,2500060,2,1897.41100,1633,8313,88.20,45.56,88.20,45.56,'interception','success'),
  (80,2500060,2,1958.98400,1609,7855,78.75,36.72,78.75,36.72,'interception','success'),
  (81,2500060,2,2002.10500,1609,7870,19.95,26.52,10.50,12.92,'interception','success'),
  (82,2500060,2,2004.45100,1609,3560,10.50,12.92,5.25,12.24,'dribble','success'),
  (83,2500060,2,2010.49900,1609,7945,17.85,21.08,0.00,37.40,'shot','fail'),
  (84,2500060,2,2177.83500,1609,7870,13.65,11.56,0.00,37.40,'shot','success'),
  (85,2500060,2,2292.54500,1609,25867,11.55,19.04,13.65,25.16,'dribble','success'),
  (86,2500060,2,2293.92700,1609,25867,13.65,25.16,13.65,25.16,'shot','fail'),
  (87,2500060,2,2345.61300,1609,279717,38.85,27.20,30.45,24.48,'dribble','success'),
  (88,2500060,2,2458.34700,1609,7945,56.70,38.76,60.90,44.20,'interception','success'),
  (89,2500060,2,2581.56300,1609,7870,40.95,23.80,16.80,20.40,'dribble','success'),
  (90,2500060,2,2614.65100,1609,25867,28.35,24.48,21.00,19.72,'dribble','success'),
  (91,2500060,2,2621.49900,1609,25413,10.50,40.12,0.00,37.40,'shot','success'),
  (92,2500060,2,2772.41100,1633,41174,72.45,22.44,76.65,25.84,'interception','success'),
  (93,2500060,2,2784.96400,1609,49876,12.60,28.56,0.00,27.20,'shot','fail'),
  (94,2500060,2,2891.68800,1609,20612,65.10,29.24,72.45,45.56,'dribble','success'),
  (95,2500060,2,2903.33900,1633,8582,84.00,19.04,74.55,42.84,'interception','success'),
  (96,2500060,2,2918.58500,1633,7970,72.45,48.96,78.75,46.92,'dribble','success'),
  (97,2500042,1,75.19026,1610,31528,32.55,23.80,49.35,23.12,'dribble','success'),
  (98,2500042,1,102.91620,1610,25553,78.75,51.68,63.00,56.44,'dribble','success'),
  (99,2500042,1,118.94010,1610,3324,32.55,36.04,29.40,51.00,'dribble','success'),
  (100,2500042,1,152.64600,1610,31528,46.20,13.60,22.05,16.32,'dribble','success'),
  (101,2500042,1,157.57510,1610,105333,23.10,25.84,21.00,36.72,'dribble','success'),
  (102,2500042,1,159.49150,1610,105333,21.00,36.72,21.00,36.72,'shot','fail'),
  (103,2500042,1,210.50310,1610,25707,34.65,23.12,25.20,37.40,'dribble','success'),
  (104,2500042,1,212.76470,1610,25707,25.20,37.40,22.05,44.20,'dribble','success'),
  (105,2500042,1,215.02640,1610,25707,22.05,44.20,0.00,27.20,'shot','fail'),
  (106,2500042,1,634.76810,1610,31528,70.35,46.92,48.30,36.04,'dribble','success'),
  (107,2500042,1,799.49460,1633,14703,10.50,44.88,7.35,35.36,'dribble','success'),
  (108,2500042,1,920.18690,1610,7887,72.45,12.24,72.45,12.24,'interception','success'),
  (109,2500042,1,933.15870,1610,105333,38.85,32.64,15.75,42.84,'dribble','fail'),
  (110,2500042,1,935.95120,1610,105333,15.75,42.84,7.35,49.64,'dribble','success'),
  (111,2500042,1,961.53650,1633,21100,81.90,31.96,81.90,31.96,'interception','success'),
  (112,2500042,1,1011.82600,1633,379209,84.00,47.60,84.00,47.60,'interception','success'),
  (113,2500042,1,1171.96400,1610,25707,40.95,47.60,39.90,57.80,'dribble','success'),
  (114,2500042,1,1223.64800,1633,21100,88.20,30.60,86.10,23.12,'interception','success'),
  (115,2500042,1,1227.78700,1610,105333,14.70,43.52,14.70,43.52,'shot','fail'),
  (116,2500042,1,1298.59600,1610,3324,35.70,44.20,38.85,46.92,'dribble','success'),
  (117,2500042,1,1323.97900,1610,31528,72.45,10.88,72.45,10.88,'interception','success'),
  (118,2500042,1,1330.75700,1610,8625,53.55,51.68,55.65,55.76,'dribble','success'),
  (119,2500042,1,1358.17300,1610,31528,69.30,25.84,45.15,38.76,'dribble','success'),
  (120,2500042,1,1403.19700,1610,25707,26.25,38.08,19.95,29.24,'dribble','success'),
  (121,2500042,1,1452.77300,1633,8561,57.75,46.24,57.75,46.24,'interception','success'),
  (122,2500042,1,1474.05600,1610,31528,59.85,57.80,35.70,53.72,'dribble','success'),
  (123,2500042,1,1573.24300,1633,379209,76.65,51.00,76.65,51.00,'interception','success'),
  (124,2500042,1,1628.57800,1610,3324,28.35,36.72,28.35,33.32,'dribble','success'),
  (125,2500042,1,1693.18200,1610,25707,35.70,14.28,17.85,21.76,'dribble','success'),
  (126,2500042,1,1811.66300,1610,105333,26.25,44.20,0.00,40.80,'shot','fail'),
  (127,2500042,1,1984.30900,1610,14748,78.75,19.04,40.95,12.24,'dribble','success'),
  (128,2500042,1,2097.42500,1610,31528,36.75,29.92,65.10,25.16,'dribble','success'),
  (129,2500042,1,2111.50800,1610,105333,13.65,35.36,0.00,37.40,'shot','fail'),
  (130,2500042,1,2238.22600,1633,26499,72.45,15.64,44.10,11.56,'dribble','success'),
  (131,2500042,1,2245.15900,1633,14703,23.10,23.80,31.50,26.52,'dribble','success'),
  (132,2500042,1,2417.47100,1633,8561,54.60,42.16,54.60,42.16,'interception','success'),
  (133,2500042,1,2437.07000,1610,14748,39.90,42.16,0.00,27.20,'shot','fail'),
  (134,2500042,1,2439.31000,1610,8032,13.65,27.88,46.20,32.64,'interception','success'),
  (135,2500042,1,2650.92100,1610,14748,80.85,55.08,82.95,29.24,'dribble','success'),
  (136,2500042,2,22.17000,1610,25707,67.20,40.12,44.10,41.48,'dribble','success'),
  (137,2500042,2,56.20011,1610,25707,24.15,40.80,12.60,44.88,'dribble','success'),
  (138,2500042,2,57.82222,1610,25707,12.60,44.88,6.30,42.16,'dribble','success'),
  (139,2500042,2,60.73769,1610,105333,12.60,44.88,9.45,38.08,'dribble','success'),
  (140,2500042,2,115.23630,1633,14703,21.00,30.60,0.00,34.00,'shot','fail'),
  (141,2500042,2,330.21780,1610,8625,14.70,41.48,0.00,34.00,'shot','fail'),
  (142,2500042,2,443.95530,1610,3324,58.80,16.32,28.35,20.40,'dribble','success'),
  (143,2500042,2,495.80750,1610,105333,30.45,46.92,19.95,43.52,'dribble','success'),
  (144,2500042,2,499.72510,1610,105333,19.95,43.52,6.30,51.68,'dribble','success'),
  (145,2500042,2,779.29410,1610,105333,30.45,12.24,11.55,18.36,'dribble','success'),
  (146,2500042,2,817.17890,1633,37725,29.40,31.28,38.85,33.32,'dribble','success'),
  (147,2500042,2,864.50450,1610,25707,23.10,30.60,19.95,37.40,'dribble','success'),
  (148,2500042,2,865.66020,1610,25707,19.95,37.40,19.95,37.40,'shot','fail'),
  (149,2500042,2,866.41650,1633,21100,79.80,33.32,70.35,34.68,'interception','success'),
  (150,2500042,2,979.50660,1610,25707,58.80,30.60,27.30,36.72,'dribble','success'),
  (151,2500042,2,1149.57900,1610,105333,36.75,21.08,37.80,13.60,'dribble','success'),
  (152,2500042,2,1151.65800,1610,105333,37.80,13.60,21.00,20.40,'dribble','success'),
  (153,2500042,2,1340.18700,1610,3350,68.25,40.80,30.45,45.56,'dribble','success'),
  (154,2500042,2,1397.17700,1610,8625,12.60,42.84,13.65,38.76,'dribble','success'),
  (155,2500042,2,1398.25500,1610,8625,13.65,38.76,0.00,27.20,'shot','fail'),
  (156,2500042,2,1485.21200,1610,105333,40.95,44.20,57.75,24.48,'dribble','success'),
  (157,2500042,2,1489.71500,1633,7915,72.45,17.00,72.45,17.00,'interception','success'),
  (158,2500042,2,1620.98200,1633,37725,32.55,38.08,34.65,40.80,'dribble','success'),
  (159,2500042,2,1625.25800,1633,7941,30.45,41.48,29.40,46.24,'dribble','success'),
  (160,2500042,2,1642.64200,1633,7941,14.70,37.40,0.00,37.40,'shot','success'),
  (161,2500042,2,1752.38000,1610,3350,80.85,10.88,59.85,14.96,'dribble','success'),
  (162,2500042,2,1757.66900,1633,8561,37.80,40.80,37.80,40.80,'interception','success'),
  (163,2500042,2,1870.23300,1633,14703,16.80,36.04,16.80,36.04,'shot','fail'),
  (164,2500042,2,1901.47300,1633,379209,10.50,35.36,18.90,17.00,'dribble','success'),
  (165,2500042,2,2013.24300,1633,14703,19.95,27.88,4.20,18.36,'dribble','success'),
  (166,2500042,2,2037.18100,1610,8032,18.90,24.48,0.00,30.60,'shot','fail'),
  (167,2500042,2,2088.87500,1610,7887,88.20,31.28,88.20,31.28,'interception','success'),
  (168,2500042,2,2098.13000,1633,14703,24.15,44.20,32.55,44.20,'interception','success'),
  (169,2500042,2,2127.18300,1610,25707,12.60,38.76,12.60,38.76,'shot','fail'),
  (170,2500042,2,2251.48500,1610,26010,75.60,52.36,74.55,48.28,'dribble','success'),
  (171,2500042,2,2255.65200,1610,25707,59.85,31.96,30.45,26.52,'dribble','success'),
  (172,2500042,2,2263.01700,1633,70965,74.55,11.56,52.50,40.80,'dribble','success'),
  (173,2500042,2,2281.46900,1610,26010,76.65,51.00,61.95,40.80,'dribble','success'),
  (174,2500042,2,2428.27200,1610,25707,10.50,44.20,0.00,34.00,'shot','fail'),
  (175,2500042,2,2478.09600,1610,31528,33.60,20.40,43.05,23.12,'dribble','success'),
  (176,2500042,2,2492.51300,1633,21100,74.55,27.88,74.55,27.88,'interception','success'),
  (177,2500042,2,2511.17900,1610,31528,24.15,30.60,33.60,31.28,'dribble','success'),
  (178,2500042,2,2513.73700,1610,26010,15.75,33.32,18.90,40.12,'interception','success'),
  (179,2500042,2,2621.50000,1610,25707,23.10,38.76,23.10,38.76,'shot','fail'),
  (180,2500042,2,2671.36300,1633,7915,63.00,12.24,57.75,11.56,'dribble','success'),
  (181,2500042,2,2699.62400,1633,37725,59.85,48.28,54.60,48.28,'dribble','success'),
  (182,2500042,2,2715.51600,1610,3350,60.90,34.68,43.05,28.56,'dribble','success'),
  (183,2500042,2,2728.22300,1610,31528,10.50,34.00,29.40,33.32,'dribble','success'),
  (184,2500042,2,2802.74900,1610,7887,10.50,19.72,8.40,24.48,'dribble','success'),
  (185,2500042,2,2901.92000,1610,25707,29.40,30.60,25.20,33.32,'dribble','success'),
  (186,2500042,2,2907.33400,1610,3360,19.95,15.64,19.95,15.64,'shot','fail'),
  (187,2500042,2,2932.08100,1610,3360,12.60,20.40,0.00,40.80,'shot','fail'),
  (188,2500042,2,3002.40500,1610,31528,45.15,11.56,29.40,16.32,'dribble','success'),
  (189,2500042,2,3004.10300,1633,14703,74.55,19.04,81.90,13.60,'interception','success'),
  (190,2500031,1,28.07733,1610,135103,74.55,30.60,74.55,30.60,'interception','success'),
  (191,2500031,1,37.66030,1610,25553,82.95,34.68,82.95,34.68,'interception','success'),
  (192,2500031,1,106.85630,1610,8032,49.35,17.00,49.35,17.00,'interception','success'),
  (193,2500031,1,107.71170,1624,8945,69.30,51.68,69.30,51.68,'interception','success'),
  (194,2500031,1,109.89850,1624,48,66.15,30.60,72.45,34.00,'dribble','success'),
  (195,2500031,1,112.08520,1624,48,72.45,34.00,72.45,34.00,'interception','success'),
  (196,2500031,1,165.09900,1624,48,89.25,57.80,95.55,48.28,'interception','success'),
  (197,2500031,1,174.73980,1624,11152,79.80,38.76,61.95,23.80,'dribble','success'),
  (198,2500031,1,196.50660,1610,25707,51.45,31.96,54.60,25.16,'dribble','success'),
  (199,2500031,1,383.86870,1624,11152,71.40,18.36,79.80,23.12,'dribble','success'),
  (200,2500031,1,408.11290,1624,11152,74.55,40.80,58.80,41.48,'dribble','success'),
  (201,2500031,1,491.89620,1624,48,19.95,45.56,25.20,26.52,'dribble','success'),
  (202,2500031,1,493.68680,1624,48,25.20,26.52,0.00,27.20,'shot','fail'),
  (203,2500031,1,538.42610,1610,105333,27.30,16.32,17.85,24.48,'dribble','success'),
  (204,2500031,1,541.51830,1610,105333,17.85,24.48,17.85,24.48,'shot','fail'),
  (205,2500031,1,656.95210,1624,13484,34.65,38.76,51.45,36.04,'dribble','success'),
  (206,2500031,1,768.67050,1624,11152,57.75,32.64,47.25,32.64,'dribble','success'),
  (207,2500031,1,794.12860,1610,25707,26.25,20.40,29.40,25.84,'dribble','success'),
  (208,2500031,1,797.94300,1610,3324,27.30,27.20,24.15,14.96,'dribble','success'),
  (209,2500031,1,813.02180,1610,14748,65.10,25.16,42.00,25.84,'dribble','success'),
  (210,2500031,1,849.82790,1624,20441,69.30,14.96,68.25,24.48,'dribble','success'),
  (211,2500031,1,870.78290,1624,20441,49.35,40.12,42.00,45.56,'dribble','success'),
  (212,2500031,1,924.62400,1610,14748,48.30,15.64,48.30,15.64,'interception','success'),
  (213,2500031,1,931.78340,1610,8032,32.55,12.24,26.25,26.52,'interception','success'),
  (214,2500031,1,936.12410,1624,13484,50.40,50.32,34.65,36.72,'dribble','success'),
  (215,2500031,1,937.37620,1624,13484,34.65,36.72,37.80,43.52,'dribble','success'),
  (216,2500031,1,944.64550,1624,20441,27.30,53.04,35.70,46.24,'dribble','success'),
  (217,2500031,1,963.58150,1624,11152,36.75,32.64,34.65,40.80,'dribble','success'),
  (218,2500031,1,1024.61400,1624,13484,30.45,34.00,46.20,48.96,'dribble','success'),
  (219,2500031,1,1034.89300,1624,11152,47.25,33.32,33.60,31.28,'dribble','success'),
  (220,2500031,1,1046.53000,1610,105333,68.25,55.08,56.70,48.28,'dribble','success'),
  (221,2500031,1,1055.70900,1610,25707,18.90,21.08,21.00,32.64,'dribble','success'),
  (222,2500031,1,1062.60100,1610,105333,10.50,48.96,11.55,45.56,'dribble','success'),
  (223,2500031,1,1064.71600,1610,105333,11.55,45.56,0.00,34.00,'shot','fail'),
  (224,2500031,1,1133.61600,1624,48,68.25,20.40,68.25,20.40,'interception','success'),
  (225,2500031,1,1268.90000,1624,11152,70.35,27.20,49.35,30.60,'dribble','success'),
  (226,2500031,1,1333.27600,1610,3350,40.95,52.36,40.95,52.36,'interception','success'),
  (227,2500031,1,1342.39600,1624,8945,74.55,36.72,70.35,55.08,'dribble','success'),
  (228,2500031,1,1489.20100,1624,8945,29.40,40.80,0.00,40.80,'shot','fail'),
  (229,2500031,1,1557.55900,1624,48,66.15,14.28,66.15,14.28,'interception','success'),
  (230,2500031,1,1578.19800,1624,257762,76.65,49.64,76.65,49.64,'interception','success'),
  (231,2500031,1,1614.53100,1610,105333,35.70,53.72,52.50,54.40,'dribble','success'),
  (232,2500031,1,1669.64900,1610,8625,30.45,55.08,14.70,46.24,'dribble','success'),
  (233,2500031,1,1671.76700,1610,8625,14.70,46.24,0.00,34.00,'shot','fail'),
  (234,2500031,1,1738.63700,1610,14748,74.55,23.12,47.25,29.92,'dribble','success'),
  (235,2500031,1,1825.60300,1610,3350,71.40,45.56,71.40,45.56,'interception','success'),
  (236,2500031,1,1849.46800,1624,11152,69.30,51.00,73.50,56.44,'interception','success'),
  (237,2500031,1,1884.68200,1610,135103,78.75,30.60,96.60,34.00,'interception','success'),
  (238,2500031,1,2096.53700,1624,257762,68.25,56.44,68.25,56.44,'interception','success'),
  (239,2500031,1,2107.12000,1610,31528,79.80,19.04,79.80,19.04,'interception','success'),
  (240,2500031,1,2116.05700,1624,210044,56.70,42.84,49.35,28.56,'dribble','success'),
  (241,2500031,1,2147.67100,1610,8032,71.40,15.64,71.40,15.64,'interception','success'),
  (242,2500031,1,2182.68700,1624,257762,73.50,44.88,76.65,53.72,'dribble','success'),
  (243,2500031,1,2192.02300,1624,11152,68.25,49.64,58.80,29.92,'dribble','success'),
  (244,2500031,1,2311.25900,1624,20441,61.95,56.44,61.95,56.44,'interception','success'),
  (245,2500031,1,2314.18100,1624,11152,64.05,50.32,45.15,27.88,'dribble','success'),
  (246,2500031,1,2345.79700,1624,54,30.45,34.68,0.00,34.00,'shot','fail'),
  (247,2500031,1,2390.63400,1610,25707,37.80,29.24,21.00,21.08,'dribble','success'),
  (248,2500031,1,2394.63600,1624,257762,79.80,40.80,79.80,40.80,'interception','success'),
  (249,2500031,1,2446.58000,1624,11152,32.55,21.08,27.30,19.04,'dribble','success'),
  (250,2500031,1,2451.27900,1610,31528,84.00,48.28,84.00,48.28,'interception','success'),
  (251,2500031,1,2469.68100,1624,48,57.75,16.32,57.75,16.32,'interception','success'),
  (252,2500031,1,2474.84200,1610,3350,45.15,38.76,30.45,37.40,'dribble','success'),
  (253,2500031,1,2604.09600,1610,31528,18.90,32.64,18.90,32.64,'shot','fail'),
  (254,2500031,1,2607.65000,1624,13484,70.35,39.44,69.30,35.36,'dribble','success'),
  (255,2500031,1,2640.03200,1624,20441,30.45,55.08,25.20,44.88,'dribble','success'),
  (256,2500031,1,2643.25700,1610,135103,78.75,30.60,78.75,30.60,'interception','success'),
  (257,2500031,1,2644.92300,1624,11152,38.85,32.64,46.20,46.92,'interception','success'),
  (258,2500031,1,2677.87200,1624,54,29.40,45.56,29.40,45.56,'shot','fail'),
  (259,2500031,1,2678.46400,1624,20441,29.40,45.56,10.50,31.96,'dribble','success'),
  (260,2500031,1,2679.05600,1624,20441,10.50,31.96,26.25,48.96,'interception','success'),
  (261,2500031,1,2714.68500,1624,54,32.55,25.84,0.00,34.00,'shot','success'),
  (262,2500031,1,2773.02800,1610,25707,28.35,42.84,11.55,48.28,'dribble','success'),
  (263,2500031,1,2779.62800,1610,8032,17.85,26.52,0.00,27.20,'shot','fail'),
  (264,2500031,2,7.62767,1624,11152,27.30,16.32,32.55,23.80,'dribble','success'),
  (265,2500031,2,98.03444,1610,8625,32.55,52.36,16.80,43.52,'dribble','success'),
  (266,2500031,2,100.99000,1610,8625,16.80,43.52,16.80,43.52,'shot','fail'),
  (267,2500031,2,112.39270,1610,3350,12.60,39.44,10.50,56.44,'dribble','success'),
  (268,2500031,2,166.86260,1610,8032,19.95,25.16,28.35,12.92,'dribble','success'),
  (269,2500031,2,171.35080,1610,14748,44.10,18.36,44.10,11.56,'dribble','success'),
  (270,2500031,2,219.84040,1610,25553,71.40,39.44,54.60,48.96,'dribble','success'),
  (271,2500031,2,225.65890,1624,257762,72.45,23.80,72.45,23.80,'interception','success'),
  (272,2500031,2,271.58810,1610,3324,29.40,44.20,14.70,46.24,'dribble','success'),
  (273,2500031,2,308.11650,1624,11152,35.70,19.04,40.95,15.64,'dribble','success'),
  (274,2500031,2,310.22700,1624,11152,40.95,15.64,40.95,15.64,'interception','success'),
  (275,2500031,2,375.44740,1610,8625,56.70,48.96,38.85,55.08,'dribble','success'),
  (276,2500031,2,383.18920,1624,14911,66.15,51.68,66.15,51.68,'interception','success'),
  (277,2500031,2,438.69970,1624,11152,58.80,21.08,37.80,34.68,'dribble','success'),
  (278,2500031,2,619.62510,1610,25707,70.35,19.72,70.35,29.24,'dribble','success'),
  (279,2500031,2,692.76620,1624,210044,66.15,49.64,46.20,34.68,'dribble','success'),
  (280,2500031,2,721.47980,1624,13484,25.20,29.92,29.40,21.76,'dribble','success'),
  (281,2500031,2,823.14730,1610,135103,12.60,38.76,13.65,34.68,'dribble','success'),
  (282,2500031,2,895.30870,1624,14911,22.05,46.24,0.00,30.60,'shot','fail'),
  (283,2500031,2,982.80980,1624,13484,11.55,34.00,0.00,37.40,'shot','success'),
  (284,2500031,2,1049.19700,1624,48,73.50,14.96,73.50,14.96,'interception','success'),
  (285,2500031,2,1058.37100,1610,14748,72.45,21.76,53.55,22.44,'dribble','success'),
  (286,2500031,2,1099.17100,1610,135103,47.25,46.92,47.25,46.92,'interception','success'),
  (287,2500031,2,1101.38100,1610,31528,49.35,28.56,32.55,19.04,'dribble','success'),
  (288,2500031,2,1130.70500,1610,105333,22.05,25.16,0.00,40.80,'shot','fail'),
  (289,2500031,2,1199.17300,1610,3350,37.80,44.20,37.80,44.20,'interception','success'),
  (290,2500031,2,1395.24400,1610,3350,21.00,27.88,0.00,27.20,'shot','fail'),
  (291,2500031,2,1470.20800,1610,105333,63.00,44.20,70.35,40.80,'dribble','success'),
  (292,2500031,2,1474.71800,1610,25553,76.65,55.76,44.10,53.72,'dribble','success'),
  (293,2500031,2,1552.55800,1610,135103,58.80,35.36,58.80,35.36,'interception','success'),
  (294,2500031,2,1555.16900,1624,11152,68.25,29.92,68.25,29.92,'interception','success'),
  (295,2500031,2,1557.73600,1624,257762,72.45,38.08,72.45,38.08,'interception','success'),
  (296,2500031,2,1613.16700,1610,135103,25.20,34.68,25.20,34.68,'interception','success'),
  (297,2500031,2,1758.73700,1610,31528,65.10,31.96,49.35,38.08,'dribble','success'),
  (298,2500031,2,1795.14600,1610,25553,43.05,55.08,29.40,53.72,'dribble','success'),
  (299,2500031,2,1806.24300,1610,25707,23.10,10.88,13.65,17.68,'dribble','success'),
  (300,2500031,2,1863.76500,1624,11152,34.65,18.36,37.80,20.40,'dribble','success'),
  (301,2500031,2,1869.75100,1610,31528,73.50,40.80,73.50,40.80,'interception','success'),
  (302,2500031,2,1872.56600,1624,210044,42.00,16.32,42.00,16.32,'interception','success'),
  (303,2500031,2,1935.17200,1610,25707,39.90,17.68,25.20,13.60,'dribble','success'),
  (304,2500031,2,1980.11100,1624,48,80.85,14.28,80.85,14.28,'interception','success'),
  (305,2500031,2,2111.95500,1624,257762,66.15,45.56,66.15,45.56,'interception','success'),
  (306,2500031,2,2178.77600,1624,11152,67.20,53.04,69.30,35.36,'dribble','success'),
  (307,2500031,2,2231.78700,1610,31528,82.95,21.76,82.95,21.76,'interception','success'),
  (308,2500031,2,2304.17700,1610,3350,74.55,19.72,74.55,19.72,'interception','success'),
  (309,2500031,2,2345.86500,1610,3350,44.10,19.04,44.10,19.04,'interception','success'),
  (310,2500031,2,2644.39700,1624,61967,63.00,14.28,63.00,14.28,'interception','success'),
  (311,2500031,2,2656.30100,1624,61967,75.60,25.84,69.30,21.08,'dribble','success'),
  (312,2500031,2,2660.91500,1610,31528,39.90,44.20,39.90,44.20,'interception','success'),
  (313,2500031,2,2787.48300,1624,54,72.45,38.76,72.45,38.76,'interception','success'),
  (314,2500031,2,2800.38200,1624,8717,60.90,30.60,72.45,22.44,'interception','success'),
  (315,2500031,2,2855.33300,1624,257762,73.50,34.00,73.50,34.00,'interception','success'),
  (316,2500031,2,2890.65500,1624,11152,75.60,17.68,75.60,17.68,'interception','success'),
  (317,2500031,2,2928.81100,1610,25553,10.50,46.92,0.00,27.20,'shot','fail'),
  (318,2500011,1,73.75697,1610,7887,60.90,12.92,34.65,14.96,'dribble','success'),
  (319,2500011,1,96.30835,1610,25553,58.80,42.84,58.80,42.84,'interception','success'),
  (320,2500011,1,191.80350,1610,25707,77.70,36.04,71.40,48.28,'dribble','success'),
  (321,2500011,1,380.81370,1628,486252,56.70,53.72,56.70,53.72,'interception','success'),
  (322,2500011,1,441.33430,1610,31528,59.85,21.76,52.50,10.20,'dribble','success'),
  (323,2500011,1,496.50270,1610,31528,22.05,27.20,0.00,34.00,'shot','fail'),
  (324,2500011,1,537.95320,1610,22889,12.60,49.64,12.60,49.64,'shot','fail'),
  (325,2500011,1,605.55850,1610,105333,17.85,54.40,17.85,42.84,'dribble','success'),
  (326,2500011,1,608.09890,1610,105333,17.85,42.84,0.00,37.40,'shot','fail'),
  (327,2500011,1,685.89440,1628,8471,10.50,16.32,16.80,27.20,'dribble','success'),
  (328,2500011,1,687.36900,1628,8471,16.80,27.20,0.00,40.80,'shot','fail'),
  (329,2500011,1,739.30990,1610,31528,84.00,12.24,69.30,29.92,'dribble','success'),
  (330,2500011,1,748.96600,1610,31528,56.70,28.56,37.80,18.36,'dribble','success'),
  (331,2500011,1,854.39330,1610,25553,31.50,44.88,31.50,44.88,'interception','success'),
  (332,2500011,1,947.47180,1610,105333,28.35,35.36,19.95,23.12,'dribble','success'),
  (333,2500011,1,948.93430,1610,105333,19.95,23.12,0.00,34.00,'shot','fail'),
  (334,2500011,1,973.60740,1628,38031,57.75,19.04,61.95,17.68,'interception','success'),
  (335,2500011,1,973.62360,1610,3350,43.05,50.32,43.05,50.32,'interception','success'),
  (336,2500011,1,996.61400,1610,31528,47.25,30.60,26.25,21.76,'dribble','success'),
  (337,2500011,1,1035.63800,1610,31528,22.05,44.20,30.45,40.12,'dribble','success'),
  (338,2500011,1,1038.49700,1610,31528,30.45,40.12,30.45,40.12,'shot','fail'),
  (339,2500011,1,1223.27200,1610,31528,79.80,40.80,65.10,38.76,'dribble','success'),
  (340,2500011,1,1224.68000,1628,8623,40.95,37.40,24.15,53.72,'interception','success'),
  (341,2500011,1,1372.47300,1610,105333,25.20,38.76,0.00,40.80,'shot','fail'),
  (342,2500011,1,1402.52300,1628,38031,34.65,14.28,30.45,17.00,'dribble','success'),
  (343,2500011,1,1407.21000,1628,8471,34.65,21.08,37.80,22.44,'interception','success'),
  (344,2500011,1,1444.26400,1610,7887,67.20,12.92,40.95,18.36,'dribble','success'),
  (345,2500011,1,1461.08400,1610,135103,58.80,25.84,39.90,33.32,'dribble','success'),
  (346,2500011,1,1472.02400,1610,105333,22.05,28.56,0.00,30.60,'shot','success'),
  (347,2500011,1,1612.89700,1628,55224,14.70,34.00,0.00,27.20,'shot','fail'),
  (348,2500011,1,1729.80100,1628,8623,34.65,29.24,47.25,16.32,'dribble','success'),
  (349,2500011,1,1733.53900,1610,105333,64.05,47.60,64.05,47.60,'interception','success'),
  (350,2500011,1,1820.46800,1628,55224,46.20,52.36,40.95,45.56,'dribble','success'),
  (351,2500011,1,1952.77900,1610,26010,52.50,23.12,58.80,23.80,'dribble','success'),
  (352,2500011,1,1960.51500,1628,454,67.20,19.04,67.20,19.04,'interception','success'),
  (353,2500011,1,2021.50600,1610,25707,34.65,46.24,30.45,51.00,'dribble','success'),
  (354,2500011,1,2026.41400,1610,8032,21.00,31.96,24.15,25.84,'dribble','success'),
  (355,2500011,1,2027.87300,1610,8032,24.15,25.84,24.15,25.84,'shot','fail'),
  (356,2500011,1,2100.22400,1610,26010,26.25,40.80,26.25,40.80,'interception','success'),
  (357,2500011,1,2120.07400,1610,25707,12.60,44.88,17.85,44.88,'dribble','success'),
  (358,2500011,1,2125.05200,1628,8623,88.20,31.28,82.95,26.52,'interception','success'),
  (359,2500011,1,2125.81800,1610,25707,21.00,44.88,22.05,41.48,'interception','success'),
  (360,2500011,1,2128.32000,1610,25553,43.05,56.44,43.05,56.44,'interception','success'),
  (361,2500011,1,2226.11500,1610,22889,23.10,53.72,23.10,48.96,'dribble','success'),
  (362,2500011,1,2228.27800,1610,22889,23.10,48.96,0.00,40.80,'shot','fail'),
  (363,2500011,1,2271.53500,1628,8471,34.65,38.08,36.75,40.80,'dribble','success'),
  (364,2500011,1,2399.02100,1610,135103,10.50,29.92,17.85,37.40,'dribble','success'),
  (365,2500011,1,2455.33400,1628,7958,56.70,49.64,79.80,56.44,'dribble','success'),
  (366,2500011,1,2488.06300,1628,8471,73.50,52.36,57.75,57.80,'dribble','success'),
  (367,2500011,1,2670.93800,1610,31528,65.10,12.24,65.10,12.24,'interception','success'),
  (368,2500011,1,2676.05600,1628,8623,66.15,55.76,66.15,55.76,'interception','success'),
  (369,2500011,1,2696.61100,1610,26010,11.55,38.08,0.00,34.00,'shot','fail'),
  (370,2500011,1,2718.38500,1610,22889,19.95,46.92,0.00,34.00,'shot','fail'),
  (371,2500011,2,110.55310,1628,8471,19.95,32.64,19.95,32.64,'shot','fail'),
  (372,2500011,2,126.00970,1628,8623,35.70,15.64,27.30,23.12,'interception','success'),
  (373,2500011,2,256.12740,1628,454,71.40,10.20,71.40,10.20,'interception','success'),
  (374,2500011,2,268.10280,1610,7887,63.00,12.24,32.55,20.40,'dribble','success'),
  (375,2500011,2,271.06120,1610,7887,32.55,20.40,0.00,40.80,'shot','fail'),
  (376,2500011,2,317.07190,1610,105333,71.40,47.60,29.40,25.84,'dribble','success'),
  (377,2500011,2,420.68000,1628,7958,45.15,50.32,45.15,50.32,'interception','success'),
  (378,2500011,2,466.86080,1628,8422,54.60,19.04,59.85,24.48,'dribble','success'),
  (379,2500011,2,555.60980,1610,25707,10.50,21.76,0.00,30.60,'shot','fail'),
  (380,2500011,2,775.22870,1628,454,17.85,31.28,0.00,37.40,'shot','fail'),
  (381,2500011,2,904.04710,1610,25707,15.75,19.04,9.45,17.68,'dribble','success'),
  (382,2500011,2,910.73030,1610,105333,11.55,46.24,5.25,46.24,'dribble','success'),
  (383,2500011,2,970.10650,1610,3350,67.20,46.24,67.20,46.24,'interception','success'),
  (384,2500011,2,1075.71500,1628,486252,42.00,49.64,42.00,49.64,'interception','success'),
  (385,2500011,2,1242.46300,1628,454,11.55,32.64,29.40,19.72,'dribble','success'),
  (386,2500011,2,1284.45500,1610,25707,48.30,29.92,25.20,18.36,'dribble','success'),
  (387,2500011,2,1290.03900,1610,26010,14.70,37.40,0.00,30.34,'shot','fail'),
  (388,2500011,2,1332.98800,1628,55224,29.40,14.28,30.45,31.28,'interception','success'),
  (389,2500011,2,1368.97700,1628,127537,67.20,16.32,67.20,16.32,'interception','success'),
  (390,2500011,2,1402.64200,1610,7887,75.60,12.92,52.50,15.64,'dribble','success'),
  (391,2500011,2,1413.86000,1628,7958,76.65,25.16,76.65,25.16,'interception','success'),
  (392,2500011,2,1418.48500,1610,135103,60.90,38.08,64.05,31.28,'interception','success'),
  (393,2500011,2,1529.03800,1610,135103,30.45,35.36,33.60,31.28,'dribble','success'),
  (394,2500011,2,1545.78200,1610,22889,16.80,56.44,8.40,55.76,'dribble','success'),
  (395,2500011,2,1671.44700,1628,8422,39.90,19.04,29.40,12.92,'dribble','success'),
  (396,2500011,2,1714.49800,1610,3350,87.15,17.68,80.85,30.60,'interception','success'),
  (397,2500011,2,1717.29500,1610,31528,86.10,22.44,65.10,12.24,'dribble','success'),
  (398,2500011,2,1727.19800,1610,22889,57.75,55.08,25.20,54.40,'dribble','success'),
  (399,2500011,2,1749.75200,1610,31528,22.05,36.72,0.00,27.20,'shot','fail'),
  (400,2500011,2,1854.76400,1610,25553,75.60,31.28,55.65,36.04,'dribble','success'),
  (401,2500011,2,1863.70300,1610,25707,10.50,17.68,4.20,22.44,'interception','success'),
  (402,2500011,2,1893.03300,1610,7887,73.50,34.00,73.50,34.00,'interception','success'),
  (403,2500011,2,1949.36700,1610,25707,51.45,32.64,29.40,25.84,'dribble','success'),
  (404,2500011,2,1954.85300,1610,3324,22.05,21.08,0.00,30.60,'shot','fail'),
  (405,2500011,2,2011.86400,1628,127537,44.10,14.96,58.80,16.32,'dribble','success'),
  (406,2500011,2,2074.12700,1610,105333,79.80,48.28,46.20,51.00,'dribble','success'),
  (407,2500011,2,2086.81800,1610,3324,14.70,23.80,14.70,23.80,'shot','fail'),
  (408,2500011,2,2134.05500,1610,25707,23.10,22.44,0.00,34.00,'shot','fail'),
  (409,2500011,2,2279.85300,1628,8049,59.85,53.04,59.85,53.04,'interception','success'),
  (410,2500011,2,2459.79400,1610,22889,77.70,54.40,77.70,54.40,'interception','success'),
  (411,2500011,2,2640.26600,1628,486252,72.45,57.12,72.45,57.12,'interception','success'),
  (412,2500011,2,2872.06800,1610,25553,77.70,38.08,77.70,38.08,'interception','success'),
  (413,2499993,1,25.94763,1624,11152,59.85,47.60,63.00,49.64,'dribble','success'),
  (414,2499993,1,58.90185,1624,61967,59.85,49.64,66.15,40.80,'dribble','success'),
  (415,2499993,1,301.08840,1628,127537,64.05,48.96,64.05,48.96,'interception','success'),
  (416,2499993,1,345.86300,1624,54,37.80,48.28,37.80,48.28,'interception','success'),
  (417,2499993,1,397.27630,1628,454,75.60,19.04,75.60,19.04,'interception','success'),
  (418,2499993,1,411.23410,1628,397168,80.85,46.24,80.85,46.24,'interception','success'),
  (419,2499993,1,550.43930,1624,11152,61.95,29.92,32.55,29.92,'dribble','success'),
  (420,2499993,1,677.53040,1628,8554,10.50,47.60,10.50,44.20,'dribble','success'),
  (421,2499993,1,716.90430,1628,8425,89.25,40.12,81.90,22.44,'interception','success'),
  (422,2499993,1,727.55250,1628,454,74.55,14.28,65.10,25.84,'dribble','success'),
  (423,2499993,1,826.95090,1628,486252,78.75,57.80,66.15,52.36,'interception','success'),
  (424,2499993,1,867.22600,1624,210044,61.95,34.00,38.85,38.08,'dribble','success'),
  (425,2499993,1,973.79520,1628,8554,33.60,31.28,71.40,31.28,'dribble','success'),
  (426,2499993,1,1069.44800,1628,8623,26.25,44.20,26.25,44.20,'shot','fail'),
  (427,2499993,1,1272.82600,1628,127537,72.45,36.04,72.45,36.04,'interception','success'),
  (428,2499993,1,1335.27300,1624,61967,71.40,18.36,58.80,10.88,'interception','success'),
  (429,2499993,1,1338.61500,1624,54,59.85,34.68,36.75,42.84,'dribble','success'),
  (430,2499993,1,1484.34000,1628,8623,80.85,45.56,80.85,45.56,'interception','success'),
  (431,2499993,1,1526.02800,1628,127537,82.95,40.12,74.55,42.84,'interception','success'),
  (432,2499993,1,1572.93000,1624,61967,76.65,51.68,76.65,51.68,'interception','success'),
  (433,2499993,1,1689.66000,1624,11152,36.75,19.72,59.85,31.96,'dribble','success'),
  (434,2499993,1,1705.96100,1628,8554,89.25,22.44,88.20,33.32,'interception','success'),
  (435,2499993,1,1707.51100,1624,13484,16.80,34.68,16.80,34.68,'shot','fail'),
  (436,2499993,1,1916.69300,1624,54,45.15,11.56,45.15,11.56,'interception','success'),
  (437,2499993,1,1944.40000,1624,54,26.25,33.32,33.60,30.60,'dribble','success'),
  (438,2499993,1,2010.07300,1628,38031,33.60,17.68,30.45,19.04,'dribble','success'),
  (439,2499993,1,2021.69900,1624,210044,81.90,38.08,72.45,22.44,'dribble','success'),
  (440,2499993,1,2085.45000,1628,454,12.60,25.84,9.45,23.12,'dribble','success'),
  (441,2499993,1,2144.58900,1624,210044,69.30,23.80,52.50,30.60,'dribble','success'),
  (442,2499993,1,2237.41200,1624,11152,66.15,21.08,49.35,31.96,'dribble','success'),
  (443,2499993,1,2245.39300,1628,486252,82.95,55.08,82.95,55.08,'interception','success'),
  (444,2499993,1,2247.07600,1624,11152,34.65,34.68,34.65,34.68,'interception','success'),
  (445,2499993,1,2249.07300,1624,11152,28.35,39.44,37.80,38.08,'dribble','success'),
  (446,2499993,1,2253.62800,1624,54,30.45,36.04,34.65,27.20,'dribble','success'),
  (447,2499993,1,2336.60900,1624,61967,48.30,36.04,31.50,17.00,'dribble','success'),
  (448,2499993,1,2406.54100,1628,127537,33.60,21.08,53.55,36.72,'dribble','success'),
  (449,2499993,1,2412.71000,1624,54,74.55,29.92,74.55,29.92,'interception','success'),
  (450,2499993,1,2426.15500,1624,210044,75.60,14.96,58.80,17.68,'dribble','success'),
  (451,2499993,1,2438.25700,1624,257762,74.55,50.32,56.70,51.00,'dribble','success'),
  (452,2499993,1,2654.22100,1628,8471,23.10,50.32,25.20,47.60,'dribble','success'),
  (453,2499993,1,2656.51800,1628,8471,25.20,47.60,0.00,34.00,'shot','fail'),
  (454,2499993,1,2675.31000,1624,20441,35.70,49.64,27.30,31.28,'dribble','success'),
  (455,2499993,1,2678.13500,1628,127537,85.05,29.92,85.05,29.92,'interception','success'),
  (456,2499993,1,2688.49200,1624,54,28.35,50.32,28.35,50.32,'shot','fail'),
  (457,2499993,2,61.20797,1624,8717,38.85,17.68,47.25,25.16,'dribble','success'),
  (458,2499993,2,74.34278,1624,11152,31.50,26.52,31.50,26.52,'interception','success'),
  (459,2499993,2,85.71987,1624,210044,44.10,21.08,44.10,21.08,'interception','success'),
  (460,2499993,2,151.28370,1624,8717,36.75,25.84,26.25,42.16,'dribble','success'),
  (461,2499993,2,153.30460,1624,8717,26.25,42.16,0.00,40.80,'shot','fail'),
  (462,2499993,2,205.54840,1624,210044,44.10,19.72,44.10,19.72,'interception','success'),
  (463,2499993,2,210.10300,1624,13484,28.35,19.04,36.75,29.92,'dribble','success'),
  (464,2499993,2,274.76750,1628,240559,74.55,15.64,74.55,15.64,'interception','success'),
  (465,2499993,2,301.92310,1624,11152,35.70,16.32,26.25,28.56,'dribble','success'),
  (466,2499993,2,322.90250,1628,486252,89.25,51.00,88.20,24.48,'interception','success'),
  (467,2499993,2,324.47100,1624,54,16.80,43.52,0.00,34.00,'shot','fail'),
  (468,2499993,2,359.61830,1628,127537,37.80,36.04,49.35,29.92,'dribble','success'),
  (469,2499993,2,423.72560,1624,11152,74.55,23.12,64.05,19.72,'dribble','success'),
  (470,2499993,2,491.32860,1624,54,31.50,56.44,27.30,36.72,'dribble','success'),
  (471,2499993,2,586.21750,1628,8471,43.05,53.72,54.60,35.36,'interception','success'),
  (472,2499993,2,588.73150,1628,486252,57.75,42.84,63.00,51.00,'dribble','success'),
  (473,2499993,2,651.13020,1628,486252,82.95,53.72,82.95,53.72,'interception','success'),
  (474,2499993,2,666.31090,1628,127537,75.60,29.92,75.60,29.92,'interception','success'),
  (475,2499993,2,668.91330,1624,61967,31.50,40.12,31.50,40.12,'interception','success'),
  (476,2499993,2,726.86680,1624,61967,56.70,34.00,56.70,34.00,'interception','success'),
  (477,2499993,2,791.70140,1624,54,14.70,39.44,14.70,39.44,'shot','fail'),
  (478,2499993,2,830.31520,1624,25785,56.70,28.56,69.30,52.36,'dribble','success'),
  (479,2499993,2,838.28100,1628,397168,77.70,40.80,77.70,40.80,'interception','success'),
  (480,2499993,2,966.85730,1624,136441,14.70,16.32,26.25,14.28,'dribble','success'),
  (481,2499993,2,1010.49000,1628,8471,42.00,25.16,29.40,42.16,'dribble','success'),
  (482,2499993,2,1174.53500,1628,240559,80.85,42.16,82.95,44.20,'interception','success'),
  (483,2499993,2,1335.56300,1628,8623,31.50,27.20,28.35,22.44,'dribble','success'),
  (484,2499993,2,1420.34600,1628,454,79.80,12.24,74.55,19.72,'dribble','fail'),
  (485,2499993,2,1532.34700,1628,127537,59.85,24.48,59.85,24.48,'interception','success'),
  (486,2499993,2,1547.42900,1624,13484,13.65,50.32,5.25,48.96,'dribble','success'),
  (487,2499993,2,1633.10000,1624,136441,13.65,38.08,0.00,30.60,'shot','fail'),
  (488,2499993,2,1680.13200,1628,8623,85.05,48.28,85.05,48.28,'interception','success'),
  (489,2499993,2,1687.30500,1628,8623,85.05,31.96,85.05,31.96,'interception','success'),
  (490,2499993,2,1690.19800,1628,8425,79.80,31.96,95.55,28.56,'dribble','success'),
  (491,2499993,2,1842.22400,1628,240559,25.20,25.16,11.55,28.56,'dribble','success'),
  (492,2499993,2,1979.33000,1624,210044,88.20,51.68,76.65,38.08,'dribble','success'),
  (493,2499993,2,2271.14100,1624,14911,58.80,14.28,58.80,14.28,'interception','success'),
  (494,2499993,2,2274.11000,1628,397168,73.50,39.44,73.50,39.44,'interception','success'),
  (495,2499993,2,2277.33000,1624,210044,47.25,12.92,47.25,12.92,'interception','success'),
  (496,2499993,2,2289.18600,1624,14911,35.70,25.84,30.45,24.48,'dribble','success'),
  (497,2499993,2,2390.46400,1624,257762,67.20,21.08,67.20,21.08,'interception','success'),
  (498,2499993,2,2399.39600,1624,40765,42.00,41.48,31.50,40.12,'dribble','success'),
  (499,2499993,2,2401.75300,1628,8623,73.50,41.48,76.65,11.56,'interception','success'),
  (500,2499993,2,2412.88200,1624,136441,11.55,13.60,28.35,18.36,'dribble','success'),
  (501,2499993,2,2416.72700,1624,136441,28.35,18.36,28.35,18.36,'interception','success'),
  (502,2499993,2,2420.37600,1624,40765,18.90,37.40,26.25,50.32,'dribble','success'),
  (503,2499993,2,2424.82800,1624,8717,12.60,45.56,0.00,27.20,'shot','fail'),
  (504,2499993,2,2498.89300,1624,40765,46.20,36.04,35.70,41.48,'dribble','success'),
  (505,2499993,2,2547.70500,1624,8717,13.65,43.52,19.95,47.60,'dribble','success'),
  (506,2499993,2,2654.54000,1628,127537,24.15,22.44,36.75,23.12,'dribble','success'),
  (507,2499993,2,2656.69100,1628,127537,36.75,23.12,36.75,23.12,'interception','success'),
  (508,2499993,2,2887.76700,1624,61967,31.50,54.40,36.75,57.12,'interception','success'),
  (509,2499987,1,7.33157,1624,13484,30.45,18.36,48.30,33.32,'interception','success'),
  (510,2499987,1,26.77689,1609,7873,31.50,55.08,43.05,42.84,'dribble','success'),
  (511,2499987,1,32.89198,1609,3560,49.35,19.72,31.50,17.68,'dribble','success'),
  (512,2499987,1,102.45310,1624,8945,29.40,46.92,28.35,40.80,'dribble','success'),
  (513,2499987,1,192.73680,1624,8945,34.65,53.04,37.80,53.04,'dribble','success'),
  (514,2499987,1,339.14550,1624,11152,37.80,34.68,34.65,21.76,'dribble','success'),
  (515,2499987,1,470.29000,1609,7855,33.60,49.64,51.45,53.72,'dribble','success'),
  (516,2499987,1,476.91490,1624,48,77.70,14.28,77.70,14.28,'interception','success'),
  (517,2499987,1,482.49460,1624,13484,23.10,11.56,14.70,19.04,'dribble','success'),
  (518,2499987,1,513.68180,1609,25867,67.20,34.00,45.15,36.72,'dribble','success'),
  (519,2499987,1,530.37430,1609,7873,19.95,46.92,19.95,46.92,'shot','fail'),
  (520,2499987,1,567.10290,1609,120339,13.65,57.12,10.50,57.80,'dribble','success'),
  (521,2499987,1,685.76580,1609,7873,40.95,44.88,44.10,55.08,'dribble','success'),
  (522,2499987,1,801.99530,1624,14911,11.55,12.92,3.15,16.32,'dribble','success'),
  (523,2499987,1,836.86420,1624,210044,10.50,36.72,11.55,31.96,'dribble','success'),
  (524,2499987,1,1041.10500,1624,14911,28.35,12.92,0.00,27.20,'shot','fail'),
  (525,2499987,1,1066.07400,1624,136441,88.20,12.92,92.40,27.20,'interception','success'),
  (526,2499987,1,1066.96600,1609,7873,12.60,40.80,0.00,40.80,'shot','fail'),
  (527,2499987,1,1189.75600,1609,120339,66.15,36.04,66.15,36.04,'interception','success'),
  (528,2499987,1,1194.37800,1609,49876,63.00,50.32,63.00,50.32,'interception','success'),
  (529,2499987,1,1195.67600,1624,13484,36.75,11.56,36.75,11.56,'interception','success'),
  (530,2499987,1,1253.89100,1609,7873,16.80,57.80,25.20,53.72,'dribble','success'),
  (531,2499987,1,1299.53000,1624,54,29.40,31.28,33.60,34.00,'dribble','success'),
  (532,2499987,1,1410.52600,1609,7873,57.75,23.12,59.85,19.72,'dribble','success'),
  (533,2499987,1,1425.98200,1609,7855,74.55,25.16,61.95,19.04,'dribble','success'),
  (534,2499987,1,1485.15200,1624,210044,53.55,51.68,36.75,36.04,'dribble','success'),
  (535,2499987,1,1532.27800,1609,49876,43.05,23.12,37.80,25.16,'interception','success'),
  (536,2499987,1,1536.03500,1624,257762,75.60,42.16,64.05,45.56,'interception','success'),
  (537,2499987,1,1621.77200,1609,120339,79.80,41.48,90.30,34.68,'dribble','success'),
  (538,2499987,1,1640.49100,1624,210044,59.85,36.72,47.25,42.84,'dribble','success'),
  (539,2499987,1,1733.89800,1624,11152,18.90,32.64,18.90,32.64,'shot','fail'),
  (540,2499987,1,1814.23400,1624,11152,67.20,42.16,54.60,37.40,'dribble','success'),
  (541,2499987,1,1907.77600,1624,257762,77.70,55.08,77.70,55.08,'interception','success'),
  (542,2499987,1,1910.40700,1609,120339,49.35,16.32,39.90,17.68,'interception','success'),
  (543,2499987,1,1968.74300,1609,120339,79.80,34.00,79.80,34.00,'interception','success'),
  (544,2499987,1,1975.10700,1624,210044,67.20,52.36,67.20,52.36,'interception','success'),
  (545,2499987,1,1975.80600,1624,8945,44.10,48.28,44.10,53.04,'dribble','success'),
  (546,2499987,1,1982.86700,1624,11152,48.30,38.08,37.80,32.64,'dribble','success'),
  (547,2499987,1,1996.94200,1609,105338,79.80,34.00,74.55,23.80,'dribble','success'),
  (548,2499987,1,1999.26300,1609,3319,69.30,36.04,69.30,44.20,'dribble','success'),
  (549,2499987,1,2000.59000,1609,3319,69.30,44.20,32.55,50.32,'dribble','success'),
  (550,2499987,1,2327.28800,1609,105338,55.65,15.64,30.45,29.92,'dribble','success'),
  (551,2499987,1,2395.11100,1609,167145,16.80,48.28,0.00,40.80,'shot','fail'),
  (552,2499987,1,2525.74700,1624,210044,84.00,29.24,75.60,17.00,'dribble','success'),
  (553,2499987,1,2545.82600,1624,11152,45.15,13.60,48.30,21.08,'dribble','success'),
  (554,2499987,1,2629.30900,1624,8945,86.10,46.24,86.10,46.24,'interception','success'),
  (555,2499987,1,2677.57800,1624,8717,30.45,38.76,34.65,40.12,'dribble','success'),
  (556,2499987,1,2702.33000,1624,48,64.05,54.40,64.05,54.40,'interception','success'),
  (557,2499987,2,17.49070,1624,11152,65.10,42.16,59.85,51.00,'dribble','success'),
  (558,2499987,2,60.99922,1624,11152,29.40,22.44,32.55,33.32,'dribble','success'),
  (559,2499987,2,68.28066,1609,3319,63.00,52.36,58.80,52.36,'dribble','success'),
  (560,2499987,2,186.92120,1624,11152,52.50,29.92,30.45,24.48,'dribble','success'),
  (561,2499987,2,193.65300,1624,14911,14.70,11.56,9.45,13.60,'dribble','success'),
  (562,2499987,2,217.11180,1624,54,30.45,45.56,32.55,42.16,'dribble','success'),
  (563,2499987,2,484.80480,1624,8717,14.70,34.68,0.00,34.00,'shot','fail'),
  (564,2499987,2,571.93230,1624,11152,59.85,47.60,47.25,14.96,'dribble','success'),
  (565,2499987,2,612.19410,1609,7855,85.05,26.52,85.05,26.52,'interception','success'),
  (566,2499987,2,822.17220,1609,20612,43.05,23.80,65.10,27.20,'dribble','success'),
  (567,2499987,2,824.80020,1609,20612,65.10,27.20,65.10,27.20,'interception','success'),
  (568,2499987,2,833.15230,1609,49876,54.60,27.88,54.60,27.88,'interception','success'),
  (569,2499987,2,845.68300,1624,210044,74.55,36.72,74.55,36.72,'interception','success'),
  (570,2499987,2,860.48650,1609,120339,42.00,38.76,47.25,34.00,'interception','success'),
  (571,2499987,2,862.74590,1609,49876,47.25,34.00,34.65,36.72,'dribble','success'),
  (572,2499987,2,876.97510,1624,210044,75.60,33.32,75.60,33.32,'interception','success'),
  (573,2499987,2,879.03640,1624,11152,75.60,38.08,74.55,30.60,'dribble','success'),
  (574,2499987,2,1106.68500,1624,257762,27.30,40.80,27.30,40.80,'shot','fail'),
  (575,2499987,2,1108.06900,1609,3319,79.80,29.92,76.65,55.76,'interception','success'),
  (576,2499987,2,1194.86900,1624,8717,35.70,23.12,30.45,24.48,'dribble','success'),
  (577,2499987,2,1197.05500,1609,49876,73.50,34.00,68.25,43.52,'interception','success'),
  (578,2499987,2,1222.30600,1624,257762,70.35,51.00,68.25,54.40,'dribble','success'),
  (579,2499987,2,1268.37800,1624,8717,44.10,24.48,42.00,27.88,'dribble','success'),
  (580,2499987,2,1315.53600,1624,48,75.60,28.56,75.60,28.56,'interception','success'),
  (581,2499987,2,1318.38400,1624,8717,56.70,10.88,49.35,19.04,'dribble','success'),
  (582,2499987,2,1324.50700,1624,14911,33.60,17.68,33.60,21.08,'dribble','success'),
  (583,2499987,2,1337.65500,1609,49876,61.95,48.28,70.35,41.48,'dribble','success'),
  (584,2499987,2,1341.10200,1609,3319,56.70,33.32,35.70,22.44,'dribble','success'),
  (585,2499987,2,1350.67500,1609,7873,17.85,32.64,0.00,30.60,'shot','fail'),
  (586,2499987,2,1447.31300,1624,14911,19.95,30.60,0.00,40.80,'shot','fail'),
  (587,2499987,2,1548.52500,1624,13484,15.75,36.04,0.00,40.80,'shot','fail'),
  (588,2499987,2,1585.11100,1609,230020,61.95,47.60,38.85,53.72,'dribble','success'),
  (589,2499987,2,1608.33000,1624,48,79.80,34.68,56.70,27.20,'dribble','success'),
  (590,2499987,2,1617.07600,1624,20441,11.55,44.20,0.00,34.00,'shot','fail'),
  (591,2499987,2,1686.25200,1624,8945,66.15,57.80,59.85,57.80,'interception','success'),
  (592,2499987,2,1712.73700,1609,7855,76.65,26.52,69.30,20.40,'dribble','success'),
  (593,2499987,2,1768.28600,1624,210044,30.45,39.44,37.80,45.56,'dribble','success'),
  (594,2499987,2,1783.92800,1624,48,45.15,28.56,45.15,28.56,'interception','success'),
  (595,2499987,2,1805.86100,1624,8945,10.50,46.24,0.00,34.00,'shot','fail'),
  (596,2499987,2,1876.61200,1609,25867,45.15,10.20,48.30,10.20,'dribble','success'),
  (597,2499987,2,1903.64700,1609,20612,61.95,36.72,39.90,43.52,'dribble','success'),
  (598,2499987,2,2050.41300,1609,230020,42.00,39.44,47.25,38.08,'dribble','success'),
  (599,2499987,2,2149.71800,1624,20441,61.95,53.72,48.30,42.84,'interception','success'),
  (600,2499987,2,2177.02500,1609,7855,49.35,32.64,36.75,14.96,'dribble','success'),
  (601,2499987,2,2181.86100,1624,210044,72.45,53.04,75.60,57.12,'interception','success'),
  (602,2499987,2,2251.47100,1609,20612,77.70,43.52,68.25,44.20,'dribble','success'),
  (603,2499987,2,2291.97200,1624,48,81.90,36.72,81.90,36.72,'interception','success'),
  (604,2499987,2,2611.03100,1609,20612,74.55,21.76,74.55,21.76,'interception','success'),
  (605,2499987,2,2710.31200,1609,25413,11.55,23.80,0.00,34.00,'shot','fail'),
  (606,2499987,2,2770.15600,1609,20612,58.80,46.92,38.85,48.28,'dribble','success'),
  (607,2499987,2,2946.42900,1624,11152,79.80,34.00,81.90,31.28,'dribble','success'),
  (608,2499961,1,60.68089,1633,8561,76.65,11.56,84.00,17.00,'interception','success'),
  (609,2499961,1,83.31925,1633,70965,71.40,16.32,63.00,15.64,'dribble','success'),
  (610,2499961,1,176.00220,1633,70965,15.75,37.40,0.00,40.80,'shot','fail'),
  (611,2499961,1,697.88040,1633,8313,45.15,56.44,45.15,56.44,'interception','success'),
  (612,2499961,1,700.42780,1633,7941,45.15,52.36,42.00,46.24,'dribble','success'),
  (613,2499961,1,782.69110,1628,8422,60.90,57.12,48.30,46.92,'dribble','success'),
  (614,2499961,1,828.08590,1628,397168,46.20,50.32,30.45,55.76,'dribble','success'),
  (615,2499961,1,1075.23400,1628,8623,63.00,34.68,33.60,20.40,'dribble','success'),
  (616,2499961,1,1198.37000,1633,224206,69.30,43.52,69.30,43.52,'interception','success'),
  (617,2499961,1,1199.93000,1628,7958,72.45,24.48,72.45,24.48,'interception','success'),
  (618,2499961,1,1204.19500,1628,127537,59.85,37.40,46.20,36.72,'dribble','success'),
  (619,2499961,1,1319.78400,1633,224206,73.50,52.36,31.50,51.68,'dribble','fail'),
  (620,2499961,1,1330.62500,1633,21100,86.10,41.48,86.10,41.48,'interception','success'),
  (621,2499961,1,1380.56200,1628,8471,44.10,42.16,12.60,51.00,'dribble','success'),
  (622,2499961,1,1491.20600,1628,38031,32.55,15.64,29.40,21.76,'interception','success'),
  (623,2499961,1,1513.25500,1633,8561,81.90,50.32,81.90,50.32,'interception','success'),
  (624,2499961,1,1634.95100,1633,8313,71.40,18.36,72.45,12.92,'dribble','success'),
  (625,2499961,1,1698.27500,1628,8471,10.50,21.08,10.50,21.08,'shot','fail'),
  (626,2499961,1,1827.53100,1628,8471,16.80,55.08,21.00,53.72,'dribble','success'),
  (627,2499961,1,1832.87600,1628,127537,29.40,35.36,0.00,34.00,'shot','fail'),
  (628,2499961,1,1858.98900,1633,8561,44.10,50.32,47.25,46.24,'dribble','success'),
  (629,2499961,1,1879.71400,1633,8582,28.35,19.72,13.65,10.20,'dribble','success'),
  (630,2499961,1,2043.60700,1633,224206,32.55,54.40,21.00,56.44,'interception','success'),
  (631,2499961,1,2138.05300,1633,70965,56.70,55.08,48.30,47.60,'dribble','fail'),
  (632,2499961,1,2140.42800,1633,70965,48.30,47.60,33.60,34.68,'dribble','success'),
  (633,2499961,1,2161.04200,1633,37725,29.40,32.64,29.40,32.64,'interception','success'),
  (634,2499961,1,2465.86100,1633,37725,67.20,16.32,64.05,21.76,'dribble','success'),
  (635,2499961,1,2900.34900,1628,397168,37.80,54.40,24.15,46.92,'dribble','success'),
  (636,2499961,1,2908.84400,1628,8471,13.65,53.72,16.80,51.00,'dribble','success'),
  (637,2499961,1,2910.71900,1628,8471,16.80,51.00,0.00,34.00,'shot','fail'),
  (638,2499961,1,2999.54500,1633,224206,14.70,50.32,22.05,48.96,'dribble','success'),
  (639,2499961,1,3020.96400,1628,8623,70.35,17.00,69.30,15.64,'interception','success'),
  (640,2499961,1,3036.31200,1628,8422,10.50,13.60,6.30,19.72,'dribble','success'),
  (641,2499961,1,3042.18600,1628,127537,22.05,40.12,0.00,34.00,'shot','fail'),
  (642,2499961,2,206.11680,1628,397168,84.00,50.32,84.00,50.32,'interception','success'),
  (643,2499961,2,278.96210,1628,8623,34.65,53.72,46.20,46.92,'dribble','success'),
  (644,2499961,2,297.63450,1633,70965,47.25,34.00,29.40,50.32,'dribble','success'),
  (645,2499961,2,310.96540,1628,8471,76.65,38.76,64.05,33.32,'dribble','success'),
  (646,2499961,2,380.58490,1628,127537,48.30,17.68,48.30,17.68,'interception','success'),
  (647,2499961,2,431.98610,1628,7988,19.95,18.36,28.35,23.12,'dribble','success'),
  (648,2499961,2,439.18840,1628,397168,14.70,49.64,0.00,40.80,'shot','fail'),
  (649,2499961,2,503.83930,1628,8554,89.25,23.12,89.25,23.12,'interception','success'),
  (650,2499961,2,506.37890,1628,8422,66.15,12.24,45.15,16.32,'dribble','success'),
  (651,2499961,2,617.53280,1633,8561,24.15,23.12,25.20,35.36,'dribble','success'),
  (652,2499961,2,751.79640,1628,8471,33.60,50.32,32.55,45.56,'dribble','success'),
  (653,2499961,2,786.19630,1633,37725,77.70,57.12,77.70,57.12,'interception','success'),
  (654,2499961,2,804.27230,1633,70965,72.45,21.08,43.05,45.56,'dribble','success'),
  (655,2499961,2,828.62010,1628,8554,66.15,40.12,66.15,40.12,'interception','success'),
  (656,2499961,2,1092.27300,1633,379209,36.75,20.40,22.05,24.48,'dribble','success'),
  (657,2499961,2,1094.25000,1633,379209,22.05,24.48,0.00,40.80,'shot','fail'),
  (658,2499961,2,1146.70900,1628,127537,53.55,44.88,53.55,44.88,'interception','success'),
  (659,2499961,2,1149.94200,1633,379209,70.35,25.84,69.30,51.68,'interception','success'),
  (660,2499961,2,1274.84700,1633,8005,71.40,37.40,49.35,45.56,'dribble','success'),
  (661,2499961,2,1367.25600,1628,8623,63.00,51.00,57.75,34.00,'dribble','success'),
  (662,2499961,2,1417.67600,1633,37725,64.05,34.00,34.65,33.32,'dribble','success'),
  (663,2499961,2,1791.30700,1633,7941,33.60,26.52,42.00,27.20,'dribble','success'),
  (664,2499961,2,1810.89200,1633,8561,76.65,51.00,55.65,48.28,'dribble','success'),
  (665,2499961,2,1819.25100,1633,37725,48.30,37.40,49.35,33.32,'dribble','success'),
  (666,2499961,2,1826.48100,1633,8561,44.10,46.92,29.40,52.36,'dribble','success'),
  (667,2499961,2,1863.13600,1633,8005,42.00,51.68,42.00,51.68,'interception','success'),
  (668,2499961,2,2015.74200,1633,21100,82.95,35.36,82.95,40.12,'interception','success'),
  (669,2499961,2,2020.94100,1628,8623,34.65,27.88,34.65,27.88,'interception','success'),
  (670,2499961,2,2031.79900,1628,38031,11.55,39.44,27.30,43.52,'dribble','success'),
  (671,2499961,2,2047.15300,1628,8471,34.65,49.64,30.45,46.24,'dribble','success'),
  (672,2499961,2,2150.97300,1633,8313,30.45,24.48,38.85,44.20,'dribble','success'),
  (673,2499961,2,2318.60100,1633,37725,76.65,43.52,76.65,43.52,'interception','success'),
  (674,2499961,2,2585.85400,1628,127537,70.35,20.40,74.55,22.44,'dribble','success'),
  (675,2499961,2,2781.28600,1628,8422,52.50,37.40,35.70,37.40,'dribble','success'),
  (676,2499961,2,2819.84000,1628,8471,40.95,50.32,50.40,44.88,'dribble','success'),
  (677,2499961,2,2840.36500,1633,8313,84.00,40.80,84.00,40.80,'interception','success'),
  (678,2499949,1,24.82479,1628,8623,31.50,46.24,31.50,46.24,'interception','success'),
  (679,2499949,1,37.59813,1609,25413,64.05,43.52,58.80,45.56,'dribble','success'),
  (680,2499949,1,138.71790,1628,8623,30.45,46.24,30.45,27.88,'dribble','success'),
  (681,2499949,1,249.89650,1609,49876,76.65,29.24,61.95,23.80,'dribble','success'),
  (682,2499949,1,277.38450,1609,230020,15.75,22.44,0.00,34.00,'shot','fail'),
  (683,2499949,1,439.50410,1609,7873,43.05,32.64,30.45,29.24,'dribble','success'),
  (684,2499949,1,449.24920,1628,454,82.95,40.12,96.60,27.88,'dribble','success'),
  (685,2499949,1,485.13690,1609,230020,63.00,19.04,37.80,12.92,'dribble','success'),
  (686,2499949,1,507.64500,1628,397168,64.05,48.28,77.70,57.12,'dribble','success'),
  (687,2499949,1,512.02830,1609,20612,45.15,15.64,45.15,15.64,'interception','success'),
  (688,2499949,1,524.97040,1609,120339,31.50,28.56,37.80,34.68,'dribble','success'),
  (689,2499949,1,823.95390,1628,7988,40.95,51.68,65.10,44.20,'dribble','success'),
  (690,2499949,1,834.44310,1609,3319,37.80,34.00,36.75,27.88,'dribble','success'),
  (691,2499949,1,837.72240,1609,25413,26.25,21.08,23.10,40.80,'dribble','success'),
  (692,2499949,1,840.89700,1609,49876,11.55,41.48,11.55,41.48,'shot','fail'),
  (693,2499949,1,916.99450,1628,8422,78.75,10.88,71.40,16.32,'interception','success'),
  (694,2499949,1,932.31000,1609,7873,89.25,47.60,74.55,34.00,'dribble','success'),
  (695,2499949,1,950.90040,1609,7855,75.60,44.20,61.95,51.00,'dribble','success'),
  (696,2499949,1,956.49620,1628,8554,78.75,15.64,78.75,15.64,'interception','success'),
  (697,2499949,1,988.99460,1609,3319,40.95,24.48,46.20,18.36,'dribble','success'),
  (698,2499949,1,994.39240,1628,397168,80.85,53.72,70.35,52.36,'interception','success'),
  (699,2499949,1,1121.54700,1609,20612,75.60,22.44,59.85,14.96,'dribble','success'),
  (700,2499949,1,1252.33300,1609,7873,33.60,25.16,27.30,25.16,'dribble','success'),
  (701,2499949,1,1255.47900,1609,49876,19.95,33.32,26.25,40.80,'dribble','success'),
  (702,2499949,1,1260.20000,1609,3319,13.65,39.44,13.65,39.44,'shot','fail'),
  (703,2499949,1,1289.42200,1609,25413,13.65,32.64,0.00,37.40,'shot','success'),
  (704,2499949,1,1358.32600,1609,120339,69.30,20.40,74.55,22.44,'dribble','success'),
  (705,2499949,1,1362.73600,1628,7958,44.10,42.84,44.10,42.84,'interception','success'),
  (706,2499949,1,1364.97100,1628,8422,43.05,42.16,38.85,19.04,'dribble','success'),
  (707,2499949,1,1371.59800,1609,7873,69.30,43.52,58.80,34.00,'dribble','success'),
  (708,2499949,1,1422.59900,1609,230020,29.40,10.88,32.55,19.72,'dribble','success'),
  (709,2499949,1,1427.66600,1609,230020,27.30,40.12,0.00,34.00,'shot','fail'),
  (710,2499949,1,1450.63400,1628,8623,48.30,32.64,42.00,40.12,'dribble','success'),
  (711,2499949,1,1571.61100,1609,230020,31.50,40.12,36.75,18.36,'dribble','success'),
  (712,2499949,1,1608.59600,1628,38031,86.10,47.60,75.60,55.76,'dribble','success'),
  (713,2499949,1,1621.82700,1628,25865,12.60,47.60,0.00,34.00,'shot','fail'),
  (714,2499949,1,1810.93800,1609,167145,77.70,48.96,78.75,42.16,'interception','success'),
  (715,2499949,1,1813.81800,1609,120339,66.15,46.24,76.65,34.00,'dribble','success'),
  (716,2499949,1,1830.28100,1609,120339,74.55,16.32,63.00,20.40,'dribble','success'),
  (717,2499949,1,1848.80500,1628,25865,57.75,26.52,51.45,53.72,'dribble','success'),
  (718,2499949,1,1905.56600,1628,8422,56.70,19.72,59.85,10.20,'dribble','success'),
  (719,2499949,1,2060.85500,1628,127537,34.65,28.56,38.85,27.88,'dribble','success'),
  (720,2499949,1,2177.34000,1628,8422,11.55,19.72,4.20,19.72,'dribble','success'),
  (721,2499949,1,2198.81200,1609,20612,81.90,23.80,81.90,23.80,'interception','success'),
  (722,2499949,1,2204.50200,1609,7873,65.10,40.80,44.10,41.48,'dribble','success'),
  (723,2499949,1,2235.86400,1609,3319,15.75,57.80,30.45,53.04,'interception','success'),
  (724,2499949,1,2291.73200,1628,38031,33.60,36.04,32.55,39.44,'dribble','success'),
  (725,2499949,1,2321.96100,1609,3319,19.95,33.32,14.70,17.00,'dribble','success'),
  (726,2499949,1,2374.99200,1609,3319,74.55,57.80,60.90,55.08,'dribble','success'),
  (727,2499949,1,2411.51100,1628,8422,30.45,14.96,37.80,18.36,'dribble','success'),
  (728,2499949,1,2533.84400,1609,279717,75.60,14.96,94.50,19.04,'interception','success'),
  (729,2499949,1,2542.14000,1628,8422,25.20,37.40,0.00,30.60,'shot','fail'),
  (730,2499949,1,2605.25300,1609,167145,40.95,51.68,28.35,47.60,'dribble','success'),
  (731,2499949,1,2738.70000,1609,120339,75.60,40.12,69.30,53.72,'interception','success'),
  (732,2499949,1,2769.92400,1628,397168,28.35,38.76,0.00,34.00,'shot','fail'),
  (733,2499949,2,29.13615,1628,8623,75.60,17.68,75.60,17.68,'interception','success'),
  (734,2499949,2,30.70410,1628,8623,82.95,17.00,72.45,10.20,'dribble','success'),
  (735,2499949,2,88.74063,1628,25865,32.55,12.92,32.55,12.92,'shot','fail'),
  (736,2499949,2,114.38380,1628,127537,42.00,46.24,46.20,55.76,'dribble','success'),
  (737,2499949,2,175.69310,1628,8623,34.65,39.44,29.40,30.60,'dribble','success'),
  (738,2499949,2,178.13770,1628,454,32.55,13.60,32.55,13.60,'shot','fail'),
  (739,2499949,2,206.24550,1628,7958,11.55,34.00,0.00,34.00,'shot','fail'),
  (740,2499949,2,234.95650,1609,167145,71.40,52.36,71.40,52.36,'interception','success'),
  (741,2499949,2,234.95650,1609,167145,71.40,52.36,71.40,52.36,'interception','success'),
  (742,2499949,2,263.47610,1609,7873,33.60,26.52,28.35,29.24,'dribble','success'),
  (743,2499949,2,302.18560,1628,8554,75.60,20.40,75.60,20.40,'interception','success'),
  (744,2499949,2,327.52390,1628,7988,53.55,34.00,53.55,34.00,'interception','success'),
  (745,2499949,2,332.65510,1609,7855,76.65,38.76,76.65,38.76,'interception','success'),
  (746,2499949,2,332.65510,1609,7855,76.65,38.76,86.10,35.36,'interception','success'),
  (747,2499949,2,439.96730,1609,3319,39.90,50.32,54.60,56.44,'interception','success'),
  (748,2499949,2,615.54640,1609,49876,75.60,25.84,72.45,29.92,'dribble','success'),
  (749,2499949,2,621.21650,1609,230020,24.15,28.56,9.45,23.80,'dribble','success'),
  (750,2499949,2,698.09130,1609,25413,39.90,43.52,30.45,29.24,'dribble','success'),
  (751,2499949,2,704.10350,1628,397168,82.95,57.12,72.45,49.64,'interception','success'),
  (752,2499949,2,744.83570,1628,8554,82.95,24.48,82.95,24.48,'interception','success'),
  (753,2499949,2,859.50530,1609,7873,18.90,38.08,18.90,34.68,'dribble','success'),
  (754,2499949,2,881.95230,1628,38031,22.05,26.52,11.55,44.88,'dribble','success'),
  (755,2499949,2,883.80930,1628,38031,11.55,44.88,0.00,34.00,'shot','fail'),
  (756,2499949,2,947.37820,1609,7873,25.20,26.52,29.40,44.88,'interception','success'),
  (757,2499949,2,949.58670,1609,3319,29.40,44.88,25.20,43.52,'dribble','success'),
  (758,2499949,2,968.30200,1609,7873,29.40,36.04,27.30,44.20,'dribble','success'),
  (759,2499949,2,1001.97000,1628,7988,44.10,12.92,57.75,19.04,'dribble','success'),
  (760,2499949,2,1023.64900,1628,8422,28.35,19.04,31.50,11.56,'dribble','success'),
  (761,2499949,2,1069.55200,1628,25865,39.90,35.36,53.55,10.20,'dribble','success'),
  (762,2499949,2,1524.74600,1609,7855,80.85,47.60,82.95,54.40,'dribble','success'),
  (763,2499949,2,1569.88100,1628,127537,69.30,29.24,71.40,31.96,'dribble','success'),
  (764,2499949,2,1825.42400,1609,120339,36.75,27.88,36.75,27.88,'interception','success'),
  (765,2499949,2,1990.81900,1609,25413,13.65,24.48,10.50,25.84,'dribble','success'),
  (766,2499949,2,1991.74600,1609,25413,10.50,25.84,0.00,34.00,'shot','fail'),
  (767,2499949,2,1996.03700,1609,25413,13.65,27.20,0.00,34.00,'shot','fail'),
  (768,2499949,2,2029.95000,1628,8422,35.70,38.76,33.60,28.56,'dribble','success'),
  (769,2499949,2,2044.74800,1609,230020,72.45,24.48,61.95,28.56,'dribble','success'),
  (770,2499949,2,2054.35800,1628,25865,61.95,21.76,64.05,19.04,'dribble','success'),
  (771,2499949,2,2079.87500,1609,49876,44.10,57.12,39.90,50.32,'dribble','success'),
  (772,2499949,2,2081.50600,1609,49876,39.90,50.32,40.95,25.16,'interception','success'),
  (773,2499949,2,2089.18300,1609,167145,73.50,55.08,73.50,55.08,'interception','success'),
  (774,2499949,2,2121.25300,1609,120339,70.35,46.24,73.50,42.16,'dribble','success'),
  (775,2499949,2,2304.63500,1609,397098,35.70,56.44,46.20,57.80,'dribble','success'),
  (776,2499949,2,2366.31100,1609,397098,34.65,54.40,24.15,56.44,'dribble','success'),
  (777,2499949,2,2384.14700,1609,279717,64.05,21.08,64.05,21.08,'interception','success'),
  (778,2499949,2,2395.70900,1628,397168,77.70,53.04,77.70,53.04,'interception','success'),
  (779,2499949,2,2403.21700,1628,127537,82.95,48.28,82.95,48.28,'interception','success'),
  (780,2499949,2,2474.83500,1609,7855,77.70,54.40,77.70,54.40,'interception','success'),
  (781,2499949,2,2769.24900,1609,167145,39.90,55.08,39.90,55.08,'interception','success'),
  (782,2499949,2,2773.13300,1609,7873,65.10,21.76,28.35,43.52,'dribble','success'),
  (783,2499949,2,2779.41400,1609,25413,55.65,12.92,11.55,27.20,'dribble','success'),
  (784,2499949,2,2787.42100,1628,8425,51.45,53.04,53.55,14.96,'dribble','success'),
  (785,2499949,2,2821.26200,1628,8623,35.70,27.88,44.10,32.64,'dribble','success'),
  (786,2499949,2,2842.65100,1628,8554,84.00,12.24,84.00,12.24,'interception','success'),
  (787,2499949,2,2845.54000,1609,7873,33.60,52.36,33.60,52.36,'interception','success'),
  (788,2499949,2,2858.92700,1609,14869,56.70,12.24,11.55,27.88,'dribble','success'),
  (789,2499926,1,55.89929,1624,136441,57.75,10.20,57.75,14.96,'dribble','success'),
  (790,2499926,1,124.24270,1624,25804,36.75,50.32,36.75,50.32,'interception','success'),
  (791,2499926,1,201.71840,1624,54,33.60,16.32,23.10,19.04,'dribble','success'),
  (792,2499926,1,326.60620,1624,25804,67.20,44.20,44.10,35.36,'dribble','success'),
  (793,2499926,1,375.55170,1624,257762,60.90,52.36,37.80,45.56,'dribble','success'),
  (794,2499926,1,536.18950,1633,20620,36.75,14.28,37.80,19.04,'dribble','success'),
  (795,2499926,1,545.08600,1624,136441,65.10,23.80,42.00,18.36,'dribble','success'),
  (796,2499926,1,568.37330,1624,257762,59.85,43.52,47.25,40.80,'dribble','success'),
  (797,2499926,1,880.91590,1624,136441,60.90,21.08,42.00,13.60,'dribble','success'),
  (798,2499926,1,895.61800,1624,210044,27.30,30.60,35.70,31.28,'dribble','success'),
  (799,2499926,1,915.46340,1624,54,13.65,56.44,10.50,57.80,'dribble','success'),
  (800,2499926,1,1007.63000,1624,257762,50.40,51.68,33.60,43.52,'dribble','success'),
  (801,2499926,1,1065.18600,1633,26499,84.00,16.32,84.00,16.32,'interception','success'),
  (802,2499926,1,1099.56200,1624,257762,65.10,51.68,53.55,39.44,'dribble','success'),
  (803,2499926,1,1217.90500,1633,20620,81.90,17.68,67.20,18.36,'interception','success'),
  (804,2499926,1,1270.84800,1624,257762,59.85,49.64,31.50,43.52,'dribble','success'),
  (805,2499926,1,1312.59400,1624,257762,69.30,43.52,69.30,43.52,'interception','success'),
  (806,2499926,1,1386.51400,1633,41174,26.25,42.84,26.25,42.84,'interception','success'),
  (807,2499926,1,1396.93700,1624,14911,67.20,14.96,54.60,19.04,'dribble','success'),
  (808,2499926,1,1441.42100,1624,13484,27.30,13.60,7.35,19.72,'dribble','success'),
  (809,2499926,1,1489.00000,1633,20620,70.35,47.60,70.35,53.72,'dribble','success'),
  (810,2499926,1,1607.13900,1633,41174,57.75,55.76,48.30,29.92,'dribble','success'),
  (811,2499926,1,1637.34800,1633,20620,45.15,50.32,45.15,50.32,'interception','success'),
  (812,2499926,1,1643.04700,1624,8717,22.05,26.52,7.35,19.04,'dribble','success'),
  (813,2499926,1,1650.32900,1624,8717,22.05,21.08,0.00,37.40,'shot','fail'),
  (814,2499926,1,1664.11100,1624,210044,28.35,40.12,0.00,40.80,'shot','fail'),
  (815,2499926,1,1713.42600,1624,136441,40.95,21.76,61.95,19.04,'dribble','success'),
  (816,2499926,1,1761.49100,1624,54,23.10,29.24,0.00,40.80,'shot','fail'),
  (817,2499926,1,1821.04900,1624,257762,81.90,19.72,90.30,39.44,'interception','success'),
  (818,2499926,1,1887.25200,1624,136441,75.60,26.52,29.40,21.76,'dribble','success'),
  (819,2499926,1,1902.07100,1624,210044,31.50,16.32,31.50,16.32,'interception','success'),
  (820,2499926,1,1965.67200,1624,257762,67.20,36.04,66.15,40.12,'interception','success'),
  (821,2499926,1,1980.13400,1624,48,68.25,24.48,49.35,21.76,'dribble','success'),
  (822,2499926,1,2030.97700,1624,8717,38.85,19.04,34.65,20.40,'dribble','success'),
  (823,2499926,1,2049.73500,1624,54,27.30,17.68,10.50,11.56,'dribble','success'),
  (824,2499926,1,2057.72100,1624,136441,22.05,22.44,9.45,11.56,'dribble','success'),
  (825,2499926,1,2061.54700,1624,54,21.00,22.44,21.00,22.44,'shot','fail'),
  (826,2499926,1,2072.62800,1633,379209,89.25,11.56,61.95,22.44,'interception','success'),
  (827,2499926,1,2165.43800,1624,25785,23.10,47.60,0.00,27.20,'shot','fail'),
  (828,2499926,1,2286.58000,1624,136441,80.85,12.24,80.85,12.24,'interception','success'),
  (829,2499926,1,2343.62500,1624,257762,60.90,54.40,38.85,53.04,'dribble','success'),
  (830,2499926,1,2351.17400,1633,37725,76.65,31.96,76.65,31.96,'interception','success'),
  (831,2499926,1,2351.95000,1633,20620,73.50,26.52,72.45,23.12,'dribble','success'),
  (832,2499926,1,2360.33600,1624,54,39.90,45.56,56.70,31.96,'interception','success'),
  (833,2499926,1,2363.02300,1624,136441,56.70,31.96,39.90,24.48,'dribble','success'),
  (834,2499926,1,2465.02300,1633,21100,82.95,27.88,82.95,27.88,'interception','success'),
  (835,2499926,1,2467.43300,1633,7941,71.40,33.32,70.35,46.24,'dribble','success'),
  (836,2499926,1,2481.32300,1633,379209,85.05,24.48,85.05,24.48,'interception','success'),
  (837,2499926,1,2551.86400,1624,48,54.60,34.68,35.70,27.20,'dribble','success'),
  (838,2499926,1,2598.47400,1624,25785,37.80,55.76,29.40,54.40,'dribble','success'),
  (839,2499926,1,2644.17900,1624,136441,68.25,22.44,68.25,22.44,'interception','success'),
  (840,2499926,1,2661.92900,1624,54,59.85,44.20,24.15,29.24,'dribble','fail'),
  (841,2499926,1,2668.45500,1624,54,25.20,33.32,0.00,34.00,'shot','fail'),
  (842,2499926,2,114.29970,1624,8717,57.75,12.92,68.25,16.32,'dribble','success'),
  (843,2499926,2,202.03810,1624,54,77.70,15.64,73.50,21.76,'dribble','success'),
  (844,2499926,2,263.34070,1624,136441,39.90,10.88,32.55,20.40,'dribble','success'),
  (845,2499926,2,390.29870,1624,13484,12.60,29.24,21.00,53.04,'interception','success'),
  (846,2499926,2,420.29300,1624,8717,28.35,14.96,26.25,21.08,'dribble','success'),
  (847,2499926,2,420.93860,1624,8717,26.25,21.08,0.00,40.80,'shot','fail'),
  (848,2499926,2,474.26560,1624,48,72.45,13.60,60.90,12.92,'dribble','success'),
  (849,2499926,2,585.68240,1624,54,17.85,31.28,23.10,40.80,'dribble','success'),
  (850,2499926,2,593.60070,1633,20620,82.95,34.00,74.55,27.20,'interception','success'),
  (851,2499926,2,636.58230,1633,41174,19.95,21.08,19.95,17.00,'dribble','success'),
  (852,2499926,2,658.84250,1633,21100,65.10,17.68,65.10,17.68,'interception','success'),
  (853,2499926,2,781.32150,1624,13484,21.00,53.72,6.30,50.32,'dribble','success'),
  (854,2499926,2,785.52490,1624,14911,11.55,38.76,11.55,38.76,'shot','fail'),
  (855,2499926,2,838.19980,1633,7941,50.40,31.96,19.95,28.56,'dribble','success'),
  (856,2499926,2,845.05090,1624,25804,81.90,40.80,73.50,44.20,'dribble','success'),
  (857,2499926,2,852.01640,1624,13484,45.15,13.60,27.30,11.56,'dribble','success'),
  (858,2499926,2,941.99340,1624,54,14.70,29.24,14.70,29.24,'shot','fail'),
  (859,2499926,2,1002.65700,1633,41174,47.25,33.32,36.75,27.88,'dribble','success'),
  (860,2499926,2,1007.04100,1624,14911,70.35,44.20,55.65,36.04,'dribble','success'),
  (861,2499926,2,1122.96600,1624,48,43.05,20.40,29.40,19.72,'dribble','success'),
  (862,2499926,2,1126.37700,1624,48,29.40,19.72,29.40,19.72,'shot','fail'),
  (863,2499926,2,1127.51500,1633,8553,89.25,46.92,94.50,45.56,'interception','success'),
  (864,2499926,2,1204.51500,1624,14911,56.70,31.96,37.80,38.76,'dribble','success'),
  (865,2499926,2,1231.28000,1624,54,38.85,14.28,27.30,21.08,'dribble','success'),
  (866,2499926,2,1233.34300,1624,54,27.30,21.08,0.00,30.60,'shot','fail'),
  (867,2499926,2,1275.11700,1633,8561,45.15,51.00,65.10,42.16,'dribble','success'),
  (868,2499926,2,1277.67000,1633,8561,65.10,42.16,65.10,42.16,'interception','success'),
  (869,2499926,2,1308.41200,1624,8717,12.60,31.96,12.60,31.96,'shot','fail'),
  (870,2499926,2,1482.60900,1633,25572,11.55,13.60,22.05,21.08,'dribble','success'),
  (871,2499926,2,1496.42700,1633,20620,27.30,17.68,0.00,30.60,'shot','success'),
  (872,2499926,2,1601.99500,1624,8717,11.55,42.16,2.10,44.88,'dribble','success'),
  (873,2499926,2,1659.32200,1624,8717,17.85,19.04,12.60,19.04,'dribble','success'),
  (874,2499926,2,1661.66300,1624,8717,12.60,19.04,0.00,34.00,'shot','fail'),
  (875,2499926,2,1669.79700,1624,13484,24.15,21.08,19.95,32.64,'dribble','success'),
  (876,2499926,2,1782.17800,1624,25785,50.40,53.04,36.75,49.64,'dribble','success'),
  (877,2499926,2,1797.73400,1624,14911,32.55,12.24,17.85,18.36,'dribble','success'),
  (878,2499926,2,1802.13700,1624,54,27.30,24.48,0.00,30.60,'shot','fail'),
  (879,2499926,2,1979.60200,1624,20441,38.85,50.32,22.05,48.96,'dribble','success'),
  (880,2499926,2,2166.44700,1624,54,72.45,12.24,72.45,12.24,'interception','success'),
  (881,2499926,2,2233.88000,1624,48,14.70,24.48,14.70,24.48,'shot','fail'),
  (882,2499926,2,2262.57200,1624,61967,12.60,23.80,0.00,40.80,'shot','fail'),
  (883,2499926,2,2271.39600,1633,26499,80.85,15.64,67.20,17.00,'dribble','success'),
  (884,2499926,2,2292.06800,1624,14911,32.55,34.00,0.00,37.40,'shot','success'),
  (885,2499926,2,2392.86800,1624,61967,77.70,10.20,77.70,10.20,'interception','success'),
  (886,2499926,2,2557.74100,1624,61967,67.20,25.16,71.40,21.08,'dribble','success'),
  (887,2499926,2,2567.55100,1624,54,57.75,21.08,37.80,22.44,'dribble','success'),
  (888,2499926,2,2626.01100,1624,25785,78.75,53.72,78.75,53.72,'interception','success'),
  (889,2499926,2,2630.81400,1624,20441,58.80,42.16,38.85,25.84,'dribble','success'),
  (890,2499926,2,2637.17300,1624,3424,21.00,42.84,21.00,42.84,'shot','fail'),
  (891,2499926,2,2699.53700,1633,8553,89.25,40.80,89.25,40.80,'interception','success'),
  (892,2499926,2,2706.70600,1624,14911,21.00,51.68,21.00,40.12,'dribble','success'),
  (893,2499926,2,2914.54900,1624,61967,21.00,38.08,21.00,38.08,'shot','fail'),
  (894,2499926,2,2916.13000,1633,37725,86.10,34.00,90.30,44.88,'interception','success'),
  (895,2499926,2,2917.95700,1624,13484,14.70,23.12,14.70,23.12,'shot','fail'),
  (896,2499926,2,2923.63400,1624,54,25.20,27.88,25.20,27.88,'shot','fail'),
  (897,2499926,2,2924.48500,1624,3424,11.55,27.20,13.65,30.60,'interception','success'),
  (898,2499929,1,20.71350,1609,171283,79.80,57.80,69.30,55.76,'dribble','success'),
  (899,2499929,1,29.69368,1610,28291,57.75,44.88,44.10,46.24,'interception','success'),
  (900,2499929,1,99.73007,1610,25707,10.50,18.36,10.50,18.36,'shot','fail'),
  (901,2499929,1,231.36450,1610,25707,73.50,35.36,71.40,29.92,'dribble','success'),
  (902,2499929,1,239.89390,1609,49876,46.20,53.72,58.80,42.16,'dribble','success'),
  (903,2499929,1,317.94000,1609,370224,76.65,21.08,76.65,21.08,'interception','success'),
  (904,2499929,1,560.70530,1610,3324,23.10,14.28,37.80,26.52,'dribble','success'),
  (905,2499929,1,611.39420,1609,171283,76.65,51.00,76.65,51.00,'interception','success'),
  (906,2499929,1,617.36860,1610,25707,13.65,20.40,13.65,20.40,'shot','fail'),
  (907,2499929,1,694.96450,1609,20612,43.05,49.64,43.05,49.64,'interception','success'),
  (908,2499929,1,732.54420,1610,25707,26.25,14.96,25.20,26.52,'dribble','success'),
  (909,2499929,1,736.78330,1609,3319,84.00,32.64,84.00,32.64,'interception','success'),
  (910,2499929,1,746.53300,1610,31528,48.30,34.00,48.30,34.00,'interception','success'),
  (911,2499929,1,800.18820,1610,3324,12.60,30.60,0.00,40.80,'shot','fail'),
  (912,2499929,1,838.36650,1610,135103,74.55,37.40,74.55,37.40,'interception','success'),
  (913,2499929,1,852.40430,1610,3350,77.70,48.96,81.90,49.64,'interception','success'),
  (914,2499929,1,864.34240,1610,28291,63.00,42.84,37.80,25.16,'dribble','success'),
  (915,2499929,1,956.54410,1609,3361,11.55,29.24,0.00,30.60,'shot','fail'),
  (916,2499929,1,1022.85700,1609,7873,33.60,40.12,33.60,35.36,'dribble','success'),
  (917,2499929,1,1046.93800,1610,7887,87.15,31.96,87.15,31.96,'interception','success'),
  (918,2499929,1,1051.69700,1610,25707,65.10,17.68,53.55,23.80,'dribble','success'),
  (919,2499929,1,1199.79400,1609,370224,13.65,26.52,8.40,40.12,'dribble','success'),
  (920,2499929,1,1246.61400,1610,3324,35.70,45.56,38.85,34.00,'dribble','success'),
  (921,2499929,1,1315.12700,1609,49876,30.45,26.52,30.45,26.52,'shot','fail'),
  (922,2499929,1,1317.08400,1610,31528,80.85,39.44,80.85,30.60,'interception','success'),
  (923,2499929,1,1329.86500,1609,25413,11.55,40.12,0.00,37.40,'shot','fail'),
  (924,2499929,1,1372.25300,1610,28291,70.35,25.16,34.65,23.12,'dribble','success'),
  (925,2499929,1,1376.47200,1610,8032,45.15,17.00,28.35,19.72,'dribble','success'),
  (926,2499929,1,1381.87600,1609,7873,80.85,48.28,78.75,44.20,'dribble','success'),
  (927,2499929,1,1582.31200,1610,31528,75.60,29.92,60.90,35.36,'dribble','success'),
  (928,2499929,1,1606.90500,1610,28291,14.70,29.24,0.00,34.00,'shot','fail'),
  (929,2499929,1,1675.41900,1610,31528,39.90,24.48,22.05,29.92,'interception','success'),
  (930,2499929,1,1679.22500,1610,25707,18.90,21.76,14.70,29.24,'dribble','success'),
  (931,2499929,1,1680.73000,1610,25707,14.70,29.24,14.70,29.24,'shot','fail'),
  (932,2499929,1,1686.08400,1610,7887,36.75,16.32,36.75,16.32,'interception','success'),
  (933,2499929,1,1755.27700,1609,20612,71.40,46.92,71.40,46.92,'interception','success'),
  (934,2499929,1,1760.11200,1609,3319,38.85,23.12,25.20,23.12,'dribble','success'),
  (935,2499929,1,1765.60100,1610,28291,76.65,48.28,93.45,51.68,'interception','success'),
  (936,2499929,1,1802.76200,1609,7873,45.15,27.88,48.30,35.36,'dribble','success'),
  (937,2499929,1,1829.25300,1610,25707,37.80,23.80,40.95,27.88,'dribble','success'),
  (938,2499929,1,1832.57100,1610,25707,40.95,27.88,32.55,12.92,'dribble','success'),
  (939,2499929,1,1865.25900,1610,25707,10.50,13.60,5.25,15.64,'dribble','success'),
  (940,2499929,1,1905.00000,1609,3319,43.05,21.76,66.15,22.44,'dribble','success'),
  (941,2499929,1,1943.66500,1610,135103,81.90,32.64,68.25,36.04,'dribble','success'),
  (942,2499929,1,1947.77000,1609,3319,37.80,25.16,26.25,21.76,'dribble','success'),
  (943,2499929,1,1975.47900,1609,279717,29.40,21.76,27.30,14.96,'dribble','success'),
  (944,2499929,1,2006.55100,1610,3429,85.05,38.08,95.55,38.08,'dribble','success'),
  (945,2499929,1,2015.01900,1610,31528,75.60,29.24,51.45,33.32,'dribble','success'),
  (946,2499929,1,2106.79600,1609,3361,37.80,23.12,23.10,21.76,'dribble','success'),
  (947,2499929,1,2149.33600,1610,25707,70.35,10.88,60.90,31.96,'dribble','success'),
  (948,2499929,1,2288.62800,1609,3319,26.25,22.44,0.00,40.80,'shot','fail'),
  (949,2499929,1,2377.70400,1609,49876,28.35,24.48,28.35,24.48,'shot','fail'),
  (950,2499929,1,2379.29600,1610,25553,82.95,48.28,71.40,23.80,'interception','success'),
  (951,2499929,1,2397.20700,1610,28291,72.45,29.92,65.10,23.12,'dribble','success'),
  (952,2499929,1,2404.52300,1609,7873,71.40,51.00,72.45,44.20,'dribble','success'),
  (953,2499929,1,2411.05200,1609,7873,46.20,27.88,51.45,40.12,'dribble','success'),
  (954,2499929,1,2419.45800,1610,135103,80.85,31.96,80.85,31.96,'interception','success'),
  (955,2499929,1,2425.38100,1610,25707,49.35,17.68,29.40,31.28,'dribble','success'),
  (956,2499929,1,2487.20900,1610,3324,49.35,16.32,60.90,14.28,'dribble','success'),
  (957,2499929,1,2508.56400,1609,171283,79.80,46.24,79.80,46.24,'interception','success'),
  (958,2499929,1,2531.81600,1610,8625,77.70,56.44,77.70,56.44,'interception','success'),
  (959,2499929,1,2610.20600,1610,3324,67.20,44.20,48.30,35.36,'dribble','success'),
  (960,2499929,1,2656.01000,1610,31528,10.50,21.76,31.50,17.00,'dribble','success'),
  (961,2499929,1,2677.98700,1609,3319,75.60,52.36,76.65,50.32,'dribble','fail'),
  (962,2499929,1,2687.92200,1610,25707,14.70,27.88,13.65,34.00,'dribble','success'),
  (963,2499929,1,2691.15100,1610,3350,15.75,34.00,0.00,40.80,'shot','fail'),
  (964,2499929,2,23.10116,1610,8625,40.95,54.40,40.95,54.40,'interception','success'),
  (965,2499929,2,260.29820,1610,28291,11.55,44.20,0.00,40.80,'shot','fail'),
  (966,2499929,2,358.90650,1610,31528,66.15,22.44,38.85,30.60,'dribble','success'),
  (967,2499929,2,427.99970,1610,8032,37.80,19.04,24.15,16.32,'dribble','success'),
  (968,2499929,2,433.95200,1610,3324,12.60,12.24,6.30,14.96,'dribble','success'),
  (969,2499929,2,546.26180,1610,25553,80.85,54.40,80.85,54.40,'interception','success'),
  (970,2499929,2,651.37480,1609,7873,35.70,53.04,32.55,50.32,'dribble','success'),
  (971,2499929,2,722.06010,1610,31528,31.50,25.84,31.50,25.84,'shot','fail'),
  (972,2499929,2,722.09530,1609,49876,75.60,41.48,98.70,57.12,'interception','success'),
  (973,2499929,2,801.93470,1609,20612,75.60,29.92,57.75,33.32,'dribble','success'),
  (974,2499929,2,983.10490,1610,3324,61.95,36.72,61.95,40.80,'dribble','success'),
  (975,2499929,2,990.69650,1609,25413,22.05,25.84,21.00,21.08,'dribble','success'),
  (976,2499929,2,992.62820,1609,25413,21.00,21.08,26.25,21.08,'interception','success'),
  (977,2499929,2,1036.85900,1610,3324,78.75,38.76,91.35,45.56,'interception','success'),
  (978,2499929,2,1037.42700,1609,7873,13.65,22.44,0.00,30.60,'shot','success'),
  (979,2499929,2,1129.11100,1609,25413,12.60,41.48,11.55,36.72,'dribble','success'),
  (980,2499929,2,1130.27900,1609,25413,11.55,36.72,0.00,37.40,'shot','fail'),
  (981,2499929,2,1174.64000,1609,3361,10.50,44.20,9.45,56.44,'dribble','success'),
  (982,2499929,2,1353.96800,1610,3324,48.30,32.64,33.60,25.16,'dribble','success'),
  (983,2499929,2,1381.30000,1610,25553,71.40,54.40,71.40,54.40,'interception','success'),
  (984,2499929,2,1427.51400,1609,171283,68.25,42.16,68.25,42.16,'interception','success'),
  (985,2499929,2,1465.02800,1610,3324,21.00,38.76,11.55,42.84,'dribble','success'),
  (986,2499929,2,1467.23300,1610,3324,11.55,42.84,0.00,40.80,'shot','fail'),
  (987,2499929,2,1559.94300,1609,3361,31.50,19.04,26.25,12.24,'dribble','success'),
  (988,2499929,2,1613.22400,1610,31528,44.10,25.16,29.40,38.08,'dribble','success'),
  (989,2499929,2,1614.89100,1610,31528,29.40,38.08,25.20,38.08,'dribble','success'),
  (990,2499929,2,1619.44000,1610,31528,18.90,44.88,18.90,44.88,'shot','fail'),
  (991,2499929,2,1668.60400,1609,370224,84.00,27.88,69.30,31.96,'interception','success'),
  (992,2499929,2,1744.31500,1610,3324,49.35,49.64,42.00,51.68,'dribble','success'),
  (993,2499929,2,1749.64400,1609,7882,56.70,12.24,86.10,28.56,'dribble','success'),
  (994,2499929,2,1792.85700,1609,3361,27.30,21.08,24.15,11.56,'dribble','success'),
  (995,2499929,2,1823.32800,1610,25707,48.30,40.12,40.95,27.20,'dribble','success'),
  (996,2499929,2,1828.75100,1610,3324,40.95,17.00,21.00,27.20,'dribble','success'),
  (997,2499929,2,1866.56900,1610,28291,42.00,50.32,31.50,51.68,'dribble','success'),
  (998,2499929,2,1925.52900,1610,3324,39.90,12.92,34.65,13.60,'dribble','success'),
  (999,2499929,2,2104.31700,1609,7873,73.50,38.76,73.50,38.76,'interception','success'),
  (1000,2499929,2,2155.17400,1610,8032,76.65,12.24,76.65,12.24,'interception','success');
INSERT INTO action_log (action_id, game_id, period_id, time_seconds, team_id, player_id, start_x, start_y, end_x, end_y, type_name, result_name) VALUES
  (1001,2499929,2,2156.57500,1610,3324,61.95,19.04,75.60,21.08,'dribble','success'),
  (1002,2499929,2,2166.00700,1609,3361,22.05,42.84,26.25,45.56,'dribble','success'),
  (1003,2499929,2,2404.62100,1609,20612,63.00,25.84,63.00,25.84,'interception','success'),
  (1004,2499929,2,2439.93000,1610,28291,75.60,48.96,84.00,54.40,'interception','success'),
  (1005,2499929,2,2466.57800,1609,20612,67.20,29.24,40.95,38.76,'dribble','success'),
  (1006,2499929,2,2557.97900,1609,20612,17.85,31.28,17.85,31.28,'shot','fail'),
  (1007,2499929,2,2697.34300,1609,370224,76.65,27.88,67.20,21.76,'dribble','success'),
  (1008,2499929,2,2748.70500,1609,3361,11.55,21.76,11.55,21.76,'shot','fail'),
  (1009,2499929,2,2771.94400,1609,279717,22.05,19.72,23.10,16.32,'dribble','success'),
  (1010,2499929,2,2787.39600,1609,370224,30.45,27.88,30.45,27.88,'interception','success'),
  (1011,2499929,2,2804.83100,1609,167145,13.65,36.04,0.00,30.60,'shot','success'),
  (1012,2499929,2,2849.10600,1610,3324,11.55,37.40,0.00,34.00,'shot','fail'),
  (1013,2499929,2,2852.04100,1610,22889,15.75,42.84,0.00,34.00,'shot','fail'),
  (1014,2499929,2,2862.06800,1610,31528,25.20,17.00,26.25,21.08,'dribble','success'),
  (1015,2499929,2,2871.61900,1609,7945,61.95,48.28,57.75,48.28,'dribble','success'),
  (1016,2499929,2,2912.10200,1610,31528,36.75,28.56,57.75,21.08,'dribble','success'),
  (1017,2499929,2,2920.40100,1610,31528,65.10,19.72,65.10,19.72,'interception','success');
SET FOREIGN_KEY_CHECKS=1;
