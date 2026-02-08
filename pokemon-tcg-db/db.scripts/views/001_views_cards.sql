-- Criar view para mostrar cartas com nome da coleção
CREATE VIEW vw_cards_with_collection AS
SELECT 
    c.id,
    c.hp,
    c.name,
    c.type,
    c.stage,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.ressis,
    c.retreat,
    c.cardNumberInCollection,
    col.collectionSetName,
    col.releaseDate,
    col.totalCardsInCollection
FROM tbl_cards c
INNER JOIN tbl_collections col
    ON c.collection_id = col.id;