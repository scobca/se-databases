CREATE TABLE IF NOT EXISTS Roles (
    id SERIAL PRIMARY KEY,
    description TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Culture (
    id SERIAL PRIMARY KEY,
    description TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Town (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS CultureToTown (
    culture_id INTEGER PRIMARY KEY,
    town_id INTEGER NOT NULL,
    CONSTRAINT fk_culture FOREIGN KEY (culture_id) REFERENCES Culture(id),
    CONSTRAINT fk_town FOREIGN KEY (town_id) REFERENCES Town(id)
);

CREATE TABLE IF NOT EXISTS Human (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    role_id INTEGER NOT NULL,
    town_id INTEGER NOT NULL,
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES Roles(id),
    CONSTRAINT fk_town FOREIGN KEY (town_id) REFERENCES Town(id)
);

CREATE TABLE IF NOT EXISTS Council (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Meetings (
    id SERIAL PRIMARY KEY,
    human_id INTEGER NOT NULL,
    council_id INTEGER NOT NULL,
    meeting_date DATE NOT NULL,
    CONSTRAINT fk_human FOREIGN KEY (human_id) REFERENCES Human(id),
    CONSTRAINT fk_council FOREIGN KEY (council_id) REFERENCES Council(id)
);
