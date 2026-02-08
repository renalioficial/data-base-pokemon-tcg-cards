## ✨ Nota Pessoal

Este projeto marca meu **primeiro contato com SQL e PostgreSQL**, além de ter sido a primeira vez que utilizei o **PowerShell** para interagir com banco de dados.

Apesar de já ter experiência com **Master Data da VTEX**, **Excel** e **Power BI**, nunca tinha trabalhado diretamente com SQL antes.

O desenvolvimento foi realizado durante o **Bootcamp Santander do DIO**, com apoio das ferramentas **Copilot** e **Gemini**, que me ajudaram a estruturar e organizar o código.

Foi uma experiência prática e enriquecedora, que abriu portas para entender melhor o mundo dos bancos de dados relacionais e me deu confiança para seguir aprendendo mais sobre SQL e integrando esse conhecimento com ferramentas de análise como o Power BI. 🚀

---

# 🃏 Pokémon TCG Database (PostgreSQL)

Este projeto implementa um modelo relacional em PostgreSQL para armazenar cartas do Pokémon TCG e suas coleções. Ele inclui a criação das tabelas, inserções iniciais (seeds) e uma view para facilitar consultas.

### 📸 Visualização dos Dados
Aqui está uma amostra dos dados carregados no banco (PostgreSQL) e exportados para conferência:

![Amostra PostgreSQL](pokemon-tcg-db/print%20amostra%20data%20base%20postgreeSQL.png)

---

## 📂 Estrutura do Projeto
- `tables` → criação das tabelas `tbl_collections` e `tbl_cards`.
- `seeds` → inserções iniciais de coleções e cartas.
- `views` → criação da view `vw_cards_with_collection`.
- `README.md` → documentação do projeto.

---

## 🗄️ Modelo Relacional
- **tbl_collections**: guarda informações sobre cada coleção (nome, data de lançamento, total de cartas).
- **tbl_cards**: armazena os detalhes de cada carta (HP, nome, tipo, estágio, ataque, fraqueza etc.).
- **Relacionamento**: `tbl_cards.collection_id` → chave estrangeira que referencia `tbl_collections.id`.
- **View**: `vw_cards_with_collection` une as duas tabelas e mostra os dados das cartas junto com o nome da coleção.

---

## ⚙️ Como usar

1. **Crie um banco de dados no PostgreSQL:**
   ```sql
   CREATE DATABASE pokemon_tcg;

```

2. **Execute o script de criação das tabelas:**
```bash
psql -d pokemon_tcg -f schema.sql

```


3. **Popule o banco com os dados iniciais:**
```bash
psql -d pokemon_tcg -f seeds.sql

```


4. **Crie a view:**
```bash
psql -d pokemon_tcg -f views.sql

```



---

## 🔍 Exemplos de Consultas

**1. Listar todas as cartas com informações da coleção**

```sql
SELECT
    id, hp, name, type, stage, info, attack, damage,
    weak, ressis, retreat, cardNumberInCollection,
    collectionSetName, releaseDate, totalCardsInCollection
FROM vw_cards_with_collection;

```

**2. Buscar todas as cartas de uma coleção específica**

```sql
SELECT name, hp, type, attack, damage, collectionSetName
FROM vw_cards_with_collection
WHERE collectionSetName = 'Base Set';

```

**3. Listar cartas com HP maior que 80**

```sql
SELECT name, hp, type, collectionSetName
FROM vw_cards_with_collection
WHERE hp > 80;

```

**4. Contar quantas cartas já foram inseridas por coleção**

```sql
SELECT collectionSetName, COUNT(*) AS total_inseridas
FROM vw_cards_with_collection
GROUP BY collectionSetName;

```

---

## 📊 Validação dos Dados (Excel)

Para garantir a integridade dos dados, realizei uma exportação e conferência via Excel:

---

## 📜 Licença

Este projeto é livre para uso e aprendizado.

```
```
