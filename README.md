# Rede Social
A aplicação é uma rede social tradicional onde o usuário pode fazer posts, colocar foto no perfil, seguir, deixar de seguir, comentários em Posts de outros usuários. Em sua area administrativa você pode acompanhar detalhes de todos usuários cadastrados, seus posts e também pode adicionar novos Administradores.

# Tecnologias

Para desenvolver o projeto foi usado as tecnologias: Ruby on Rails, JavaScript, Mysql2 e Bootstrap

### Pré-requisitos

Para rodar o projeto na sua máquina, deve ter instalado o ruby '2.5.8' e o 'rails', '~> 6.0.3' e Postgres

```
gem 'rails', '~> 6.0.3', '>= 6.0.3.5'
Mysql2 
```

Na sua máquina execute os comandos:
```
bundle install
yarn install
```

Obs:  
 

Em seguida crie sua base de dados com comandos:

```
rails db:create
rails db:migrate
```
Para subir o projeto local execute:
```
rails s
```

