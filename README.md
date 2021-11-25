# Rockelivery

## Introdução do Módulo 4

API para pedidos de um restaurante.

- Usuário pode se cadastrar e gerenciar sua conta
- Items do restaurante podem ser cadastrados
- Usuário pode realizar pedidos
  - Para realizar pedidos, usuário tem que se logar
  - CEP do usuário deve ser válido
- Semanalmente, um relatório de pedidos por usuário deve ser gerado

## Setup inicial do projeto

Instalar o [Phoenix](https://hexdocs.pm/phoenix/installation.html#phoenix), nosso framework web.

```bash
$ mix archive.install hex phx_new
```

Precisamos do [PostgreSQL](https://hexdocs.pm/phoenix/installation.html#postgresql) instalado também. (Fiz pelo docker)

Para usuários de linux tem que instalar [inotify-tools (for linux users)](https://hexdocs.pm/phoenix/installation.html#inotify-tools-for-linux-users) para o hot reload funcionar.

Agora com tudo instalado, vamos rodar

```bash
$ mix phx.new rockelivery --no-html --no-assets --no-mailer
```

que vai ser uma api em json e não precisamos de nada de arquivos html, arquivos estáticos e biblioteca de email.

Vamos adicionar a dependência do Credo em `mix.exs`

```elixir
{:credo, "~> 1.5", only: [:dev, :test], runtime: false}
```

Rodar o comando para gerar o `.credo.exs` e desabilitar o `ModuleDoc`

```bash
$ mix credo.gen.config
* creating .credo.exs
```

Vamos nos arquivos de `config/dev.exs` e `config/test.exs`, e verificar se as configurações do postgres está correta. Deixar o postgres do docker rodando e rodar o setup para gerar o database

```bash
$ mix ecto.setup
Compiling 11 files (.ex)
Generated rockelivery app
The database for Rockelivery.Repo has been created

20:23:19.708 [info]  Migrations already up
```

E vamos rodar o servidor

```bash
$ mix phx.server
[info] Running RockeliveryWeb.Endpoint with cowboy 2.9.0 at 0.0.0.0:4000 (http)
[info] Access RockeliveryWeb.Endpoint at http://localhost:4000
```

E abrimos no navegador `http://localhost:4000/dashboard`

## Conhecendo a estrutura de diretórios

Todo projeto phoenix terá duas pastas em `lib`. Uma com o nome do projeto `rockelivery`, onde fica a lógica de negócios e comunicação com banco de dados (arquivo `repo.ex`). E uma `rockelivery_web` onde fica tudo relacionado a web, como `controllers`, `views`, `router.ex` onde já está a rota `/dashboard`. É então um framework MVC. Apesar de não ter `models`, temos `schemas`.

Na pasta `config` estão as variáveis para cada ambiente. Em `config.exs` ficam as variáveis que valem para todos ambientes.

A pasta `_build` é tudo que foi compilado.

A pasta `priv` é tudo que queremos que vá para produção no pacotinho binário, mas que não estejam na code base, como assets, configurações de tradução `gettext`, as `migrations` e `seeds` para o banco de dados.

O arquivo `mix.lock` define as versões que estão sendo executadas de cada lib dando um `lock` na versão.

---
