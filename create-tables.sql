CREATE TABLE hexes (
  id SERIAL PRIMARY KEY,
  num INTEGER NOT NULL,
  name VARCHAR(255) NOT NULL,
  ring INTEGER NOT NULL,
  points INTEGER NOT NULL,
  economy INTEGER NOT NULL DEFAULT 0,
  labs INTEGER NOT NULL DEFAULT 0,
  mines INTEGER NOT NULL DEFAULT 0,
  wild INTEGER NOT NULL DEFAULT 0,
  advanced_economy INTEGER NOT NULL DEFAULT 0,
  advanced_labs INTEGER NOT NULL DEFAULT 0,
  advanced_mines INTEGER NOT NULL DEFAULT 0,
  ancients INTEGER NOT NULL DEFAULT 0,
  discoveries INTEGER NOT NULL DEFAULT 0,
  artifacts INTEGER NOT NULL DEFAULT 0
);
