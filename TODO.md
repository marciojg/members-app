
gem 'graphql'

bundle install

root@f9c8009a4ed2:/app# rails generate graphql:install

bundle install

root@f9c8009a4ed2:/app# rails g graphql:object Group id:Int name:String members:[Member]
root@f9c8009a4ed2:/app# rails g graphql:object Member id:Int name:String age:Int group:[Group]

criei uma query dentro de query_type
```
  field :group, GroupType, "Find a group by ID" do
    argument :id, ID
  end

  # Then provide an implementation:
  def group(id:)
    Group.find(id)
  end
```

gem "graphiql-rails"
gem 'sass-rails'

segui tutorial do graphiql-rails que pediu pra instalar o sass e instalei o sass-rails seguindo o tutorial deles

testei a rota graphiql e deu errro. solucao: https://github.com/rmosolgo/graphiql-rails/issues/75#issuecomment-591712025 e https://stackoverflow.com/questions/15342710/adding-cookie-session-store-back-to-rails-api-app

habilitei cors e precisei intalar a gem 'rack-cors'

gem 'graphql-batch'

add no myschema e mudei outros metodos tmb
