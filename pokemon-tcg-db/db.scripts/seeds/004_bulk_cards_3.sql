-- Mais cartas na coleção Base Set (collection_id = 1)
INSERT INTO tbl_cards (hp, name, type, stage, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collection_id)
VALUES
(70, 'Pidgeotto', 'Colorless', 'Stage 1', 'Bird Pokémon', 'Whirlwind', '20', 'Electric', 'Fighting', '1', 22, 1),
(80, 'Alakazam', 'Psychic', 'Stage 2', 'Psi Pokémon', 'Confuse Ray', '30', 'Psychic', 'None', '3', 1, 1),
(60, 'Gastly', 'Psychic', 'Basic', 'Gas Pokémon', 'Lick', '10', 'Psychic', 'None', '1', 50, 1);

-- Mais cartas na coleção Jungle (collection_id = 2)
INSERT INTO tbl_cards (hp, name, type, stage, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collection_id)
VALUES
(100, 'Snorlax', 'Colorless', 'Basic', 'Sleeping Pokémon', 'Body Slam', '30', 'Fighting', 'Psychic', '4', 11, 2),
(70, 'Paras', 'Grass', 'Basic', 'Mushroom Pokémon', 'Scratch', '20', 'Fire', 'Water', '1', 60, 2),
(90, 'Tauros', 'Colorless', 'Basic', 'Wild Bull Pokémon', 'Rampage', '20+', 'Fighting', 'Psychic', '2', 21, 2);

-- Mais cartas na coleção Fossil (collection_id = 3)
INSERT INTO tbl_cards (hp, name, type, stage, info, attack, damage, weak, ressis, retreat, cardNumberInCollection, collection_id)
VALUES
(80, 'Hitmonlee', 'Fighting', 'Basic', 'Kicking Pokémon', 'Stretch Kick', '30', 'Psychic', 'None', '1', 7, 3),
(70, 'Horsea', 'Water', 'Basic', 'Dragon Pokémon', 'Smokescreen', '10', 'Electric', 'None', '1', 50, 3),
(90, 'Haunter', 'Psychic', 'Stage 1', 'Gas Pokémon', 'Nightmare', '10', 'Psychic', 'None', '1', 6, 3);