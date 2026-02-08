-- Create table for collections
CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    collectionSetName VARCHAR(255) NOT NULL,
    releaseDate DATE NOT NULL,
    totalCardsInCollection INT NOT NULL
);

-- Create table for cards
CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    hp INT,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(100),
    stage VARCHAR(100),
    info TEXT,
    attack VARCHAR(255),
    damage VARCHAR(50),
    weak VARCHAR(100),
    ressis VARCHAR(100),
    retreat VARCHAR(100),
    cardNumberInCollection INT NOT NULL,
    collection_id INT NOT NULL,
    CONSTRAINT fk_collection
        FOREIGN KEY (collection_id)
        REFERENCES tbl_collections (id)
        ON DELETE CASCADE
);