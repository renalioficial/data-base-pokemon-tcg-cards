-- Inserir coleções
INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES 
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

-- Inserir cartas
INSERT INTO tbl_cards (hp, name, type, stage, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collection_id)
VALUES
(60, 'Bulbasaur', 'Grass', 'Basic', 'Seed Pokémon', 'Vine Whip', '20', 'Fire', 'Water', '1', 44, 1),
(50, 'Pikachu', 'Electric', 'Basic', 'Mouse Pokémon', 'Thunder Shock', '30', 'Fighting', 'Steel', '1', 58, 1),
(100, 'Snorlax', 'Colorless', 'Basic', 'Sleeping Pokémon', 'Body Slam', '50', 'Fighting', 'Psychic', '4', 11, 2),
(80, 'Lapras', 'Water', 'Basic', 'Transport Pokémon', 'Water Gun', '30', 'Electric', 'None', '2', 10, 3);