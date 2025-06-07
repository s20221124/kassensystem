CREATE TABLE produkte (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    barcode TEXT NOT NULL UNIQUE,
    name TEXT NOT NULL,
    preis REAL NOT NULL,
    bestand INTEGER DEFAULT 0
);

CREATE TABLE verkaeufe (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    zeitpunkt DATETIME DEFAULT CURRENT_TIMESTAMP,
    gesamtsumme REAL
);

CREATE TABLE verkaufspositionen (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    verkauf_id INTEGER NOT NULL,
    produkt_id INTEGER NOT NULL,
    anzahl INTEGER NOT NULL,
    einzelpreis REAL NOT NULL,
    FOREIGN KEY (verkauf_id) REFERENCES verkaeufe(id),
    FOREIGN KEY (produkt_id) REFERENCES produkte(id)
);
