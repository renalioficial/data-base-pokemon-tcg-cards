-- Inserir mais cartas na coleção Base Set (collection_id = 1)
INSERT INTO tbl_cards (hp, name, type, stage, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collection_id)
VALUES
(40, 'Charmander', 'Fire', 'Basic', 'Lizard Pokémon', 'Ember', '30', 'Water', 'None', '1', 46, 1),
(60, 'Squirtle', 'Water', 'Basic', 'Tiny Turtle Pokémon', 'Bubble', '20', 'Electric', 'None', '1', 7, 1),
(80, 'Ivysaur', 'Grass', 'Stage 1', 'Seed Pokémon', 'Razor Leaf', '40', 'Fire', 'Water', '2', 2, 1);

-- Inserir cartas na coleção Jungle (collection_id = 2)
INSERT INTO tbl_cards (hp, name, type, stage, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collection_id)
VALUES
(70, 'Eevee', 'Colorless', 'Basic', 'Evolution Pokémon', 'Quick Attack', '20', 'Fighting', 'None', '1', 51, 2),
(90, 'Kangaskhan', 'Colorless', 'Basic', 'Parent Pokémon', 'Comet Punch', '40', 'Fighting', 'Psychic', '3', 5, 2),
(60, 'Oddish', 'Grass', 'Basic', 'Weed Pokémon', 'Absorb', '20', 'Fire', 'Water', '1', 58, 2);

-- Inserir cartas na coleção Fossil (collection_id = 3)
INSERT INTO tbl_cards (hp, name, type, stage, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collection_id)
VALUES
(80, 'Kabuto', 'Rock/Water', 'Basic', 'Shellfish Pokémon', 'Scratch', '30', 'Grass', 'None', '2', 9, 3),
(100, 'Aerodactyl', 'Rock/Flying', 'Stage 1', 'Fossil Pokémon', 'Wing Attack', '60', 'Electric', 'Fighting', '2', 1, 3),
(70, 'Zubat', 'Poison/Flying', 'Basic', 'Bat Pokémon', 'Leech Life', '20', 'Psychic', 'None', '1', 57, 3);