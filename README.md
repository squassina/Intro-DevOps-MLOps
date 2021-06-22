# GitHub / DevOps / MLOps

O propósito deste repositório é servir de guia inicial de uso do GitHub e uma biblioteca de _links_ para documentos de DevOps
e MLOps.

## GitHub

O GitHub possui uma documentação extensa de seu uso, então vou simplesmente listar os comandos na ordem que eles são necessários
para o versionamento de um trabalho.

Os passos são os seguintes:

Com o repositório criado, faça um clone dele na sua máquina:

```bash
git clone <link_para_o_repositório>
```

Crie uma [_branch_](https://docs.github.com/en/get-started/quickstart/github-glossary#branch) que vai indicar o que está
fazendo (uma correção, uma nova _feature_, um documento). Este passo é opcional, nem sempre é necessário ter as alterações
separadas em branch. O comando é o seguinte:

```bash
git checkout -b <nome_da_branch>
```

Depois de criar, ou alterar, o código/documento que quer armazenar no GitHub, você vai fazer um [_commit_](https://docs.github.com/en/get-started/quickstart/github-glossary#commit):

```bash
git commit -m "<mensagem_descrevendo_a_alteração>"
```

Com isso é possível enviar o código para o GitHub:

```bash
git push
```

Se você tiver usado _branches_, então, no GitHub, você vai fazer o _merge_ do código na _branch_ nova com a sua _branch_
principal usando um [_pull request_](https://docs.github.com/en/get-started/quickstart/github-glossary#pull-request).

Mais informações:

1. [criar conta no GitHub](https://docs.github.com/en/get-started/signing-up-for-github/signing-up-for-a-new-github-account)
1. [criar repositório](https://docs.github.com/en/get-started/quickstart/create-a-repo)
1. [_fork_ de repositórios](https://docs.github.com/en/get-started/quickstart/fork-a-repo)
1. [alterar arquivos e fazer _commit_](https://docs.github.com/en/get-started/using-git/pushing-commits-to-a-remote-repository)
1. [ProGit (em português)](https://github.com/progit/progit2-pt-br)
1. [ProGit para o Kindle](https://www.amazon.com.br/Pro-Git-English-Scott-Chacon-ebook/dp/B01ISNIKES/ref=tmm_kin_swatch_0?_encoding=UTF8&qid=&sr=)

## DevOps

[O que é o DevOps?](https://azure.microsoft.com/overview/what-is-devops/)   
[What is DevOps? A guide to common methods and misconceptions](https://github.blog/2020-10-07-devops-definition/)

## MLOps

[MLflow](https://mlflow.org/)   
[Operações de machine learning (MLOps)](https://azure.microsoft.com/pt-br/services/machine-learning/mlops/)   
[O que é MLOps?](https://blog.nvidia.com.br/2020/09/08/o-que-e-mlops/)
