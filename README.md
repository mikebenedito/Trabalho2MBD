# Trabalho2MBD
Segundo trabalho de Modelagem de Banco de Dados
Aluno: Michael Nunes Benedito, 1º DSM Fatec Franca.

Instruções
Para esse Trabalho Final você deverá demonstrar todo o conhecimento adquirido durante o semestre na disciplina de Modelagem de Banco de Dados. 

Para isso você deverá desenvolver a Modelagem de Dados Completa da seguinte forma:

1 - Cenário: Se passando por uma empresa/usuário crie 01 cenário descrevendo a necessidade de um sistema (exemplos: sistema comercial, biblioteca, bancário e etc). Faça um texto bem detalhado onde seja possível identificar quem são as entidade, atributos e relacionamentos. É obrigatório ter no mínimo 05 entidades e todos os tipos de atributos (simples, compostos, multivalorados, derivados e atributos chave) e relacionamentos (UM PARA UM (1:1), UM PARA MUITOS (1:N) e MUITOS PARA MUITOS (N:N)). 

2 - Modelagem Conceitual: Faça o DER completo do cenários criado. Respeite todas as regras do MER.

3 - Modelagem Lógica: Faça o Modelo Lógico do cenário criado, demonstre os tipos de dados esperado em cada atributo (varchar, int e etc), demonstre também de forma clara as chaves primários e estrangeiras e a relação entre as tabelas.

4 - Modelagem Física: Faça a implementação desse cenário em algum SGBD de sua escolha (SQL Server, MySQL e etc)

5 - Dados: Faça a inserção de dados em todas as tabelas (ao menos 20 dados em cada tabela).

6 - CRUD: Faça a demonstração por meio de prints do CRUD dentro do SGBD (Inserção de dados, Leitura de Dados, Deleção e Alteração de Dados).

7 - Relatórios: utilizando a Seleção, Filtro e Ordenação crie 10 consultas para exibir os dados do seu Banco de Dados demonstrando principalmente a relação entre as tabelas.
O que deverá ser entregue?


Link do GitHub contendo todos os código SQL criados.
README bem feito contendo textos e prints demonstrando domínio nos 07 itens acima solicitados. 
Separe as sessões do README usando os títulos: Cenário, Modelagem Conceitual, Modelagem Lógica, Dados, CRUD e Relatórios.
A nota será calculada pela demonstração de conhecimento empregada nessa Modelagem de Dados Completa.

Bons estudos!

# 1 Cenário:

Uma biblioteca precisa de um sistema que registre os dados dos livros, usuários e empréstimos desses livros. Todos os empréstimos devem ter no mínimo um usuário e um livro, enquanto os livros devem ter
autores e editoras, e o usuário não pode fazer empréstimos caso sua carteirinha esteja vencida.

* Entidades e seus Relacionamentos: 
    Usuário (Relação de 1:1 com Carteirinha); 
    Carteirinha (Relação de 1:1 com Usuário, Relação de 1:N com Emprestimo);
    Emprestimo (Relação de 1:N com Carteirinha, Relação de 1:N com Livro);
    Livro:(Relação de 1:N com Emprestimo, Relação de N:N com Autor, Relação de 1:N com Editora);
    Editora:(Relação de 1:N com Livro);
    Autor: (Relação de N:N com Livro).

Explicação: Criei um cenário onde fosse possivel usar todos os tipos de atributos e todos os tipos de relacionamentos como pedido pelo professor.
No caso desse cenário de biblioteca cada usuário tem uma carteirinha que ele usa para fazer os emprestimos dos livros.


# 2 Modelagem Conceitual - DER:

<img src='/img/image1.png'>

Obs: Arquivo completa da Modelagem Conceitual no arquivo 'der e mer.pdf' dentro da pasta 'img' do repositório. 

# 3 Modelagem Lógica:

<img src='/img/image2.png'>

Obs: Arquivo completo da Modelagem Lógica no arquivo 'der e mer.pdf' dentro da pasta 'img' do repositório.

# 4 Modelagem Física:

<img src='/img/image3.png'>

Obs: A imagem acima é apenas um breve exemplo da Modelagem Física. Modelagem Física completa no arquivo 'Biblioteca - Trabalho MBD' dentro da pasta 'SQL' do repositório.

# 5 Dados:

<img src='/img/image4.png'>

Obs: Breve exemplo de inserção de dados na imagem acima. Mais exemplos no arquivo 'Biblioteca - Trabalho MBD' dentro da pasta 'SQL' deste repositório.

# 6 CRUD:

<img src='/img/image5.png'>

Obs: Imagem acima se trata apenas de um exemplo do Create(Insert). Exemplo completo de CRUD no arquivo 'Exemplos CRUD.pdf' na pasta 'img' deste repositório.

# 7 Relatórios:

<img src='/img/image6.png'>

Obs: imagem acima se trata apenas de um exemplo de um Relatório SQL. O restante dos exemplos esta no arquivo 'Biblioteca - Trabalho MDB' dentro da pasta 'SQL' deste repositório.

