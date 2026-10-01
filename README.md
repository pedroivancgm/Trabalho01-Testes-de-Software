# Trabalho01-Testes-de-Software

Para rodar o código, é necessário ter Ruby, Bundler e o Chrome na sua máquina, segue o link: https://www.ruby-lang.org/pt/downloads/

Aqui seguem os comandos antes de executar os testes em si:

```bash
cd testes       # testes é a pasta principal e deve ser acessada antes de executar o restante dos passos
bundle install  # este comando instala as dependências que estão na Gemfile.rb
```

Para conseguir o relatório de testes existem esses três comandos, dependendo do formato de relatório que você preferir:

```bash
rspec # Relatório simples (sucesso = . / falha = F)
rspec --format documentation # Relatório mais legível, mostra no terminal o que está sendo descrito e cada teste feito
rspec --format html --out relatorio.html # Relatório dos testes em html
```
