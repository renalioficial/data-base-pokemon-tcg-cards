## PIM & Master Data Governance

Autor(a): Renáli Cozaciski Cavalcante

Contato/LinkedIn: https://www.linkedin.com/in/renali-cozaciski/



![Excel Version](https://img.shields.io/badge/SQL-red?style=for-the-badge&logo=microsoft-excel)
![Excel Version](https://img.shields.io/badge/PowerShell-brown?style=for-the-badge&logo=microsoft-excel)
![Excel Version](https://img.shields.io/badge/PostgreSQL-blue?style=for-the-badge&logo=microsoft-excel)
![Excel Version](https://img.shields.io/badge/IA-orange?style=for-the-badge&logo=microsoft-excel)
![Status](https://img.shields.io/badge/Status-Concluído-green?style=for-the-badge)



## ✨ Nota Pessoal

Este projeto marca meu **primeiro contato com SQL e PostgreSQL**, além de ter sido a primeira vez que utilizei o **PowerShell** para interagir com banco de dados.

Apesar de já ter experiência com **Master Data da VTEX**, **Excel** e **Power BI**, nunca tinha trabalhado diretamente com SQL antes.

O desenvolvimento foi realizado durante o **Bootcamp Santander do DIO**, com apoio das ferramentas **Copilot** e **Gemini**, que me ajudaram a estruturar e organizar o código.

Foi uma experiência prática e enriquecedora, que abriu portas para entender melhor o mundo dos bancos de dados relacionais e me deu confiança para seguir aprendendo mais sobre SQL e integrando esse conhecimento com ferramentas de análise como o Power BI. 🚀

---

## 🛒 Contexto de Negócio: Arquitetura PIM & Master Data MDM

Embora o tema seja Pokémon, a arquitetura deste banco de dados foi desenhada simulando um **PIM (Product Information Management)** real, resolvendo dores comuns de cadastro em E-commerce e Marketplaces:

* **Gestão de Coleções (Taxonomia):** A tabela `tbl_collections` funciona como a árvore de categorias ou lançamentos de produtos ("Sazonalidade").
  
* **Cadastro de Produtos Complexos (SKUs):** A tabela `tbl_cards` simula o cadastro de itens com alta complexidade de atributos técnicos (HP, Tipo, Custo de Recuo, Fraqueza), garantindo que a ficha técnica do produto esteja padronizada.
  
* **Regras de Negócio & Integridade:** Implementação de **Foreign Keys** (Chaves Estrangeiras) para garantir a governança dos dados.
  
   
    * **Regra:**
       Nenhuma carta (Produto) pode ser cadastrada sem pertencer a uma Coleção válida (Categoria), evitando "produtos órfãos" no sistema.

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



## 🔍 Exemplos de Consultas

**1. Listar todas as cartas com informações da coleção**

```sql
SELECT
    id, hp, name, type, stage, info, attack, damage,
    weak, ressis, retreat, cardNumberInCollection,
    collectionSetName, releaseDate, totalCardsInCollection
FROM vw_cards_with_collection;

```

<img width="1353" height="719" alt="image" src="https://github.com/user-attachments/assets/d4172663-9efa-46b2-aa17-4c51c9efc82f" />

---

**2. Buscar todas as cartas de uma coleção específica**

```sql
SELECT name, hp, type, attack, damage, collectionSetName
FROM vw_cards_with_collection
WHERE collectionSetName = 'Base Set';

```

<img width="1364" height="720" alt="image" src="https://github.com/user-attachments/assets/51e8f36f-abf5-4a8b-9ee4-7a758f25b841" />


---

**3. Listar cartas com HP maior que 80**

```sql
SELECT name, hp, type, collectionSetName
FROM vw_cards_with_collection
WHERE hp > 80;

```

<img width="1366" height="718" alt="image" src="https://github.com/user-attachments/assets/400eb98e-bd8f-4b04-bed3-0484bb8d37cd" />

---

**4. Contar quantas cartas já foram inseridas por coleção**

```sql
SELECT collectionSetName, COUNT(*) AS total_inseridas
FROM vw_cards_with_collection
GROUP BY collectionSetName;

```
<img width="1364" height="718" alt="image" src="https://github.com/user-attachments/assets/f4ea86d7-3a96-4418-b5cb-1462f7c546e8" />


---

## 📊 Validação dos Dados (Excel)

Para garantir a integridade dos dados, realizei uma exportação e conferência via Excel:

<img width="1257" height="424" alt="print excel data base pokemon" src="https://github.com/user-attachments/assets/2500f053-9747-4a14-bd24-146352c5ea60" />


---

## 📜 Licença

Este projeto é livre para uso e aprendizado.

```
```





