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

Vamos usar o GitHub para fazer este trabalho mais complicado para nós? A idéia é usarmos o [GitHub Actions](https://github.com/features/actions).

### Dependências

#### Python

Para o Python, temos as opções de usar o arquivo `requirements.txt` ou o [poetry](https://python-poetry.org/).

Como já é uma solução padrão, não vamos nos aprofundar neste assunto.

#### R

Para gestão das dependências usando o R temos um [script](utils/get_deps.R).

Quando terminamos o script, temos todas as bibliotecas usadas carregadas. Para garantir que o script será executado com as
mesmas versões, usamos este script que vai gerar um arquivo chamado `install_deps`. Este arquivo deve ser armazenado no diretório
.github. Temos um exemplo em [samples](samples/.github/install_deps).

São duas colunas: package e version.

Este arquivo será lido e usamos o pacote [`remotes`](https://remotes.r-lib.org/) para fazer a instalação dos pacotes com suas versões usadas.

## Transformando o código

O GitHub Actions vai auxiliar na verificação do código, executando testes e re-treinando o modelo (em alguns casos). Porém
muitas vezes usamos Notebooks do Jupyter (no caso do Python) ou arquivos R Markdown (para o R). Este tipo de arquivo causam
algumas dificuldades quando queremos executá-los sem intervenção humana. Nestes casos, temos opções:

- [Convertendo Jupyter Notebooks para Python](https://github.com/jupyter/nbconvert)
- [Convertendo Rmd para R](https://bookdown.org/yihui/rmarkdown-cookbook/purl.html)

Vamos utilizar estas ferramentas para fazer a conversão para nós antes de enviarmos o código para o GitHub, para que estes
códigos possam ser revisados por outros e executados pelo GitHub Actions.

Para Python existe [documentação](https://docs.github.com/en/actions/guides/building-and-testing-python).

Para R existe um [projeto](https://github.com/r-lib/actions).

## Renderizando arquivos R Markdown

Quando fazemos trabalhos ou artigos e usamos R Markdown para mostrar texto, LaTeX e código em um arquivo só, que podemos
executar e mostrar os resultados, não precisamos sempre enviar para o GitHub o arquivo final, seja qual for o formato.

Para garantirmos que teremos sempre as mesmas versões do `.Rmd` e do arquivo a ser entregue podemos usar o GitHub actions
para fazer a conversão, ou renderização do documento para nós. E usamos esta versão para entrega do trabalho.

Um exemplo de _renderizador_ de `Rmd` pode ser encontrado na pasta [samples](samples/.github/workflows/rmarkdown.yml).
