# Usando GitHub na Academia

Durante nosso tempo na Universidade, seja na graduação ou em pós (especialização, mestrado ou doutorado), diversos trabalhos
são produzidos. Podem ser trabalhos somente em texto (arquivos de código ou Markdown, por exemplo), bem como arquivos "binários",
como, por exemplo, apresentações em PowerPoint ou PDF. Tudo isso pode ser armazenado no GitHub para consultas futuras.

Neste documento, vamos focar em códigos fontes e suas bases de dados.

## Começando a pesquisa

Quando temos um trabalho, começamos com as pesquisas: artigos, bases de dados, códigos de exemplo. Isso pode ser armazenado
em locais que foram feitos especialmente para isso, mas por que não versionar um documento com estas informações? Podemos
começar a montar a estrutura de diretórios para o nosso trabalho:

```dos
|-TRABALHO1
    |-\CODIGO 
    |-\FONTES_DE_DADOS
    |-LINKS_DE_PESQUISA.txt
    |-TRABALHO_1.md
```

O GitHub tem limite para o tamanho dos dados, mas pequenas amostras podem ser armazenadas junto com o trabalho, como uma
espécie de Prova de Conceito (PoC - Proof of Concept), que uma outra pessoa poderia usar para um teste rápido do código.

## Trabalhando com código

Já vimos no [README](README.md) alguns comandos básicos do git para mantermos nosso código versionado no GitHub, mas vamos
aprofundar um pouco, para que este código que está no GitHub possa ser usado quando for necessário, mesmo depois de anos.

### Dados

Começando a trabalhar com código temos, além do desafio de escrevê-lo, o desafio de ter disponíveis grandes bases de dados
que são usadas nos experimentos.

Quando fazemos um trabalho, provavelmente voltaremos nele em algum momento da vida, seja para relembrar os trabalhos antigos,
seja para atualizar um artigo, ou até como referência para um artigo novo que vamos escrever. Precisamos pensar também em
quem pode usar este código para escrever um novo artigo.

Uma boa prática seria ter a base de dados em um lugar acessível, mas gerenciada por você, para garantir que ela estará disponível.
Mesmo que eu tenha pego uma base aberta em um site da internet, isso não quer dizer que ela vai estar lá para sempre, então
eu quero copiar esta base de dados para um lugar meu. Pode ser um _Drive_ na nuvem qualquer, que eu uso só para isso, ou
um servidor da Universidade. Qualquer lugar que esteja disponível e que seja do seu controle é um bom lugar.

### Código

O código muitas vezes será o centro do trabalho. É onde tudo o que estou escrevendo será provado. Então ele deve estar correto,
legível e funcionando. Você pode pensar: "mas eu testo o código na minha máquina!", mas isso serve quando você está trabalhando
só. Imagine que está colaborando com seus colegas e um novo código é criado e inserido no trabalho: como podemos ter certeza
que este código vai funcionar? Você pode responder: "por que ele testou no computador dele!". Mas daí vem as dependências
de versão do R ou do Python, das versões das bibliotecas, se usa um sistema operacional X ou Y ou Z, uma avalanche de variáveis
que começa a ficar difícil de controlar.

Vamos usar o GitHub para fazer este trabalho mais complicado para nós? A idéia é usarmos o [GitHub Actions](https://github.com/features/actions)
