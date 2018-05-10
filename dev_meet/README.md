# DevMeet

DevMeet é uma aplicação para gerenciamento de eventos de Tecnologia.

A proposta principal é integrar grupos de pessoas que tenham interesse em
determinada tecnologia, facilitando o acesso a eventos da área.

Aqui você encontra eventos de diversas tecnologias e pode evoluir suas habilidades
participando de Bootcamps e Meetups.

_Essa aplicação foi desenvolvida como parte do Bootcamp de Ruby on Rails organizado
pelo [CaquiCoders](https://www.meetup.com/pt-BR/CaquiCoders/)._

## Setup da Aplicação

**Requisitos**

- Ruby 2.5.0
- Rails 5.2.0

**Instalando as depências da aplicação:**

```shell
$ bundle install
```

**Configurando o banco de dados:**

```shell
$ rails db:setup
```

**Rodando a aplicação:**

```shell
$ rails s
```

Pronto, agora é só acessar a seguinte URL no seu browser de preferência `http://localhost:3000/`.

## Funcionalidades

Funcionalidades desenvolvidas no Bootcamp:

- Gerenciamento de sessão do usuário (login/logout)
- CRUD de eventos
- Participação de usuário em evento
- Deploy no Heroku

Proposta de Funcionalidades extras:

- Adicionar testes com [RSpec](https://github.com/rspec/rspec-rails).
- Busca de eventos:
  - Buscar pelo nome do evento.
  - Buscar por data do evento.
  - Buscar por localização do evento.
- CRUD de grupos:
  - Grupo pode ter vários colaboradores (donos).
  - Grupo pode ter vários eventos.
  - Um evento pertence a um grupo (não mais a um usuário).
- Adicionar um mapa com a localização do evento na tela de detalhes do evento.
* ...

## Deploy

# Deploy heroku

Antes de iniciar é necessário ter uma conta no [heroku](www.heroku.com) e o [aplicativo](https://devcenter.heroku.com/articles/getting-started-with-ruby#set-up) instalado na máquina.

Também tenha certeza te ter modificado o Gemfile para usar o postgres no lugar do sqlite:

```diff
-gem 'sqlite3'
+gem 'pg 0.18.4'
```

A apartir de agora, podemos executar os comandos do heroku:

```bash
# Logar no heroku com sua conta
$ heroku login

# Criar o aplicativo no heroku
$ heroku create
=> Creating polar-inlet-4930... done, stack is cedar-14

# Verificar se o remote do heroku foi adicionado no Git
$ git remote -v
=> heroku  https://git.heroku.com/enigmatic-coast-71324.git (fetch)
=> heroku  https://git.heroku.com/enigmatic-coast-71324.git (push)

# Deploy no heroku
$ git push heroku master

# Rodar as migrations no heroku
$ heroku run rails db:migrate --app [my-app]
```

Mais informações:
https://devcenter.heroku.com/articles/getting-started-with-ruby#deploy-the-app
