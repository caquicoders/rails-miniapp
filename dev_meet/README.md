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
