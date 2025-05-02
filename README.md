# dbt-project

Este projeto utiliza o **dbt (data build tool)** para realizar transformações de dados a partir de arquivos `.csv`, organizando-os em camadas (`raw`, `staging`, `intermediate` e `marts`) com documentação e testes automatizados.

## 📂 Estrutura do Projeto
    dbt-project/
    │
    ├── data/ # CSVs usados com seeds (dados brutos)
    ├── models/
    │ ├── staging/ # Modelos de staging (referenciam os sources)
    │ ├── intermediate/ # Modelos intermediários com joins e regras de negócio
    │ └── marts/ # Modelos finais usados para análise
    │
    ├── seeds/ # Arquivos CSV que alimentam o dataset raw
    ├── snapshots/ # (opcional) Modelos snapshot, se necessário
    ├── docs/ # Documentação gerada pelo dbt docs
    └── dbt_project.yml # Configuração principal do projeto


## 🚀 Funcionalidades

- **Carregamento de dados brutos (raw)** via arquivos `.csv` com `seeds`
- **Camada de Staging** com definição de `sources`, `colunas`, `testes` e `descrições` no arquivo `source.yml`
- **Camada Intermediate** com `views` que realizam `joins`, aplicação de regras de negócio e preparação para consumo
- **Camada Marts** contendo a **tabela final** de fato, referenciando os modelos intermediários
- **Documentação automatizada** com lineage usando `dbt docs`
- Testes de integridade (ex: `not_null`, `unique`) nas colunas importantes

## 📄 Documentação

A documentação pode ser visualizada ao rodar:

```bash
dbt docs generate
dbt docs serve

## ▶️ Como Rodar o Projeto

1. **Clone o repositório:**

```bash
git clone https://github.com/ksantanac/dbt-project.git
cd dbt-project
```

2. **Instale as dependências:**

```bash
dbt deps
```

3. **Execute os seeds para carregar os dados brutos:**

```bash
dbt seed
```

4. **Execute os modelos:**

```bash
dbt run
```

5. **(Opcional) Execute os testes:**

```bash
dbt test
```

6. **Gere e visualize a documentação:**

```bash
dbt docs generate
dbt docs serve
```

---

## 🔗 Repositório

[https://github.com/ksantanac/dbt-project](https://github.com/ksantanac/dbt-project)

## 👨‍💻 Autor

**Kaue Santana**  
🔗 GitHub: [https://github.com/ksantanac](https://github.com/ksantanac)  
📧 Email: kauesantana_13@hotmail.com



