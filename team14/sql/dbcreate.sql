-- dbcreate.sql

-- team14 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS team14
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_general_ci;

USE team14;

-- TEAM

CREATE TABLE IF NOT EXISTS team(
  team_id   BIGINT UNSIGNED PRIMARY KEY,
  team_name VARCHAR(100) NOT NULL,
  UNIQUE KEY uq_team_name (team_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- COACH
CREATE TABLE IF NOT EXISTS coach (
    coach_id   BIGINT UNSIGNED PRIMARY KEY,
    name       VARCHAR(100) NOT NULL,
    birth_date DATE,
    birth_area VARCHAR(100),
    team_id    BIGINT UNSIGNED,
    CONSTRAINT fk_coach_team
        FOREIGN KEY (team_id)
        REFERENCES team(team_id)
);

-- REFEREE

CREATE TABLE IF NOT EXISTS referee (
    referee_id	BIGINT PRIMARY KEY,
    name	VARCHAR(100)
);


-- MATCH GAME

CREATE TABLE IF NOT EXISTS match_game (
    game_id     BIGINT UNSIGNED PRIMARY KEY,
    game_week   INT,
    date_utc    DATETIME,
    venue       VARCHAR(200),
    referee_id  BIGINT,

    CONSTRAINT fk_match_game_referee
        FOREIGN KEY (referee_id)
        REFERENCES referee(referee_id)
);


-- MATCH_TEAM (복합 PK: game_id + team_id)
CREATE TABLE IF NOT EXISTS match_team (
  game_id   BIGINT UNSIGNED NOT NULL,
  team_id   BIGINT UNSIGNED NOT NULL,
  coach_id  BIGINT UNSIGNED NULL,
  side      ENUM('home','away') NOT NULL,  -- CSV가 home/away 소문자
  score     TINYINT UNSIGNED NOT NULL DEFAULT 0,
  CONSTRAINT pk_match_team PRIMARY KEY (game_id, team_id),
  CONSTRAINT fk_mteam_game
    FOREIGN KEY (game_id) REFERENCES match_game(game_id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_mteam_team
    FOREIGN KEY (team_id) REFERENCES team(team_id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_mteam_coach
    FOREIGN KEY (coach_id) REFERENCES coach(coach_id)
    ON UPDATE CASCADE ON DELETE SET NULL,
  INDEX idx_mteam_game_side (game_id, side)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- PLAYER

CREATE TABLE IF NOT EXISTS player (
  player_id  BIGINT UNSIGNED PRIMARY KEY,
  name       VARCHAR(100) NOT NULL,
  birth_date  DATE NULL,
  height     SMALLINT UNSIGNED NULL,
  weight     SMALLINT UNSIGNED NULL,
  role       VARCHAR(20) NULL,           -- Defender, Midfielder, Forward, Goalkeeper
  foot       ENUM('left','right') NULL,  -- CSV 값이 모두 소문자 left/right
  team_id    BIGINT UNSIGNED NULL,

  CONSTRAINT fk_player_team
    FOREIGN KEY (team_id) REFERENCES team(team_id)
    ON UPDATE CASCADE ON DELETE SET NULL,

  INDEX idx_player_team (team_id),
  INDEX idx_player_name (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



-- ACTION_LOG
CREATE TABLE IF NOT EXISTS action_log (
  action_id    BIGINT UNSIGNED PRIMARY KEY,
  game_id      BIGINT UNSIGNED NOT NULL,
  period_id    TINYINT UNSIGNED NOT NULL,
  time_seconds DECIMAL(9,5) NOT NULL,   -- 예: 3042.18600 까지 있어서 소수 5자리
  team_id      BIGINT UNSIGNED NOT NULL,
  player_id    BIGINT UNSIGNED NULL,
  start_x      DECIMAL(5,2) UNSIGNED NULL, -- 0.00 ~ 100.00
  start_y      DECIMAL(5,2) UNSIGNED NULL,
  end_x        DECIMAL(5,2) UNSIGNED NULL,
  end_y        DECIMAL(5,2) UNSIGNED NULL,
  type_name    VARCHAR(40) NOT NULL,     -- dribble, interception, shot 
  result_name  VARCHAR(40) NULL,         -- success, fail
  CONSTRAINT fk_action_game
    FOREIGN KEY (game_id) REFERENCES match_game(game_id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_action_team
  FOREIGN KEY (team_id) REFERENCES team(team_id)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_action_player
    FOREIGN KEY (player_id) REFERENCES player(player_id)
    ON UPDATE CASCADE ON DELETE SET NULL,
  INDEX idx_action_game_time (game_id, time_seconds),
  INDEX idx_action_player (player_id),
  INDEX idx_action_team (team_id),
  INDEX idx_action_type (type_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS match_event (
    event_id    BIGINT UNSIGNED PRIMARY KEY,
    event_name  VARCHAR(100),
    
    player_id   BIGINT UNSIGNED,
    game_id     BIGINT UNSIGNED,
    team_id     BIGINT UNSIGNED,

    period_id   TINYINT,
    event_sec   INT,

    pos_orig_x  DECIMAL(10,4),
    pos_orig_y  DECIMAL(10,4),
    pos_dest_x  DECIMAL(10,4),
    pos_dest_y  DECIMAL(10,4),

    CONSTRAINT fk_match_event_player
        FOREIGN KEY (player_id)
        REFERENCES player(player_id),

    CONSTRAINT fk_match_event_game
        FOREIGN KEY (game_id)
        REFERENCES match_game(game_id),

    CONSTRAINT fk_match_event_team
        FOREIGN KEY (team_id)
        REFERENCES team(team_id)
);
