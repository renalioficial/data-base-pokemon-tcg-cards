-- Inserir mais cartas na coleção Base Set (collection_id = 1)
INSERT INTO tbl_cards (hp, name, type, stage, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collection_id)
VALUES
(60, 'Jigglypuff', 'Colorless', 'Basic', 'Balloon Pokémon', 'Sing', '0', 'Fighting', 'Psychic', '1', 54, 1),
(70, 'Machop', 'Fighting', 'Basic', 'Superpower Pokémon', 'Low Kick', '20', 'Psychic', 'None', '1', 52, 1),
(90, 'Gyarados', 'Water', 'Stage 1', 'Atrocious Pokémon', 'Dragon Rage', '50', 'Electric', 'None', '3', 6, 1);

-- Inserir mais cartas na coleção Jungle (collection_id = 2)
INSERT INTO tbl_cards (hp, name, type, stage, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collection_id)
VALUES
(100, 'Scyther', 'Grass', 'Basic', 'Mantis Pokémon', 'Slash', '30', 'Fire', 'Fighting', '1', 10, 2),
(80, 'Wigglytuff', 'Colorless', 'Stage 1', 'Balloon Pokémon', 'Do the Wave', '10+', 'Fighting', 'Psychic', '2', 32, 2),
(70, 'Nidoran♀', 'Grass', 'Basic', 'Poison Pin Pokémon', 'Scratch', '20', 'Psychic', 'None', '1', 57, 2);

-- Inserir mais cartas na coleção Fossil (collection_id = 3)
INSERT INTO tbl_cards (hp, name, type, stage, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collection_id)
VALUES
(60, 'Omanyte', 'Rock/Water', 'Basic', 'Spiral Pokémon', 'Water Gun', '20', 'Grass', 'None', '1', 52, 3),
(90, 'Moltres', 'Fire', 'Basic', 'Flame Pokémon', 'Dive Bomb', '80', 'Water', 'Fighting', '2', 12, 3),
(70, 'Grimer', 'Poison', 'Basic', 'Sludge Pokémon', 'Poison Gas', '10', 'Psychic', 'None', '1', 48, 3);