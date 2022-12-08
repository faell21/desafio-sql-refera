# Seja bem vindo ao desafio de SQL da Refera!

O objetivo desse desafio é ser algo rápido para exemplificar alguns desafios do dia a dia de quem trabalha com dados. Queremos com esse desafio avaliar o seu conhecimento básico em SQL, banco de dados e entender mais quais as boas práticas você segue para construção de código.

Importânte ressaltar que esse desafio é válido para analistas, engenheiros e cientistas de dados. Acreditamos que mesmo tendo diferenças entre as áreas, o SQL deve ser um pilar forte para todos.

Recomendamos utilizar o banco de dados PostgreSQL. Os dados e o desafio foram montados pensando nesse banco.

## Os dados podem ser carregados de três formas diferentes(em ordem do mais recomendado pro menos recomendado):
1. Usando docker. Clonando e rodando: ```docker compose up```
2. .tar: [Link](https://drive.google.com/file/d/1MjoGGK9WUek_QEwEqBFPjAYZNcCe7cGn/view?usp=sharing)
3. csv: [Link](https://drive.google.com/file/d/1NbCcMPwUBAXiC8rIxz_oxFtMHE4hR39L/view?usp=sharing)


[Modelo de dados](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/)

## Pontos importantes:
1. Todo o desafio precisa ser feito em SQL
2. O desafio tem prazo máximo de uma semana
3. Estamos à disposição para ajudar com eventuais dúvidas sobre as perguntas ou eventuais esclarecimentos, desde que essas perguntas não sejam para obter ajuda técnica na resolução.
4. Faça o seu melhor nas questões, mesmo que não tenha conseguido chegar na resposta. Deixe comentários, explique sua linha de raciocínio ou elabore até onde conseguir.
5. O desafio não foi feito para ter pegadinhas. A ideia dele é ser objetivo.
6. Iremos avaliar se chegou na correta solução, mas teremos iremos avaliar a qualidade do código feito, as boas práticas e padrões estabelecidos e os comentários e raciocínio proposto.
7. Não é necessário submeter os dados de retorno das respostas, queremos ver os códigos SQL
8. Coloque cada pergunta em um arquivo .sql seguindo o seguinte padrão: 
```[n]_answer_[first_name]_[last_name].sql``` (ex: 1_answer_neymar_junior.sql)
9. Faça upload dos arquivos em um repositório seu no github, gitlab, etc... **Não faça um fork do repositório!**
10. Envio o link do repositório como resposta do desafio ao finalizar.

## Pergunta 1:
Qual foi os top 2 filmes mais alugados de todos os tempos?

**Saída esperada:** 2 colunas(título do filme, quantidade) e 2 linhas.

## Pergunta 2:
Dentre os top 16 filmes mais alugados, qual o nome completo do ator mais presente nesses filmes?

**Saída esperada:** 1 coluna e 1 linha com o nome completo.

## Pergunta 3:
Quantos clientes novos a empresa adquiriu por mês? Considere a data de início de um novo cliente como sendo a data do primeiro filme que esse cliente alugou.

**Saída esperada:** 2 colunas ( mês_entrada_cliente:date | quantidade_de_clientes:int ) e 3 linhas.



