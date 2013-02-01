# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#State.create('AC','Acre');
#State.create('AL','Alagoas');
#State.create('AM','Amazonas');
#State.create('AP','Amapá');
#State.create('BA','Bahia');
#State.create('CE','Ceará');
#State.create('DF','Distrito Federal');
#State.create('ES','Espírito Santo');
#State.create('GO','Goiás');
#State.create('MA','Maranhão');
#State.create('MG','Minas Gerais');
#State.create('MS','Mato Grosso do Sul');
#State.create('MT','Mato Grosso');
#State.create('PA','Pará');
#State.create('PB','Paraíba');
#State.create('PE','Pernambuco');
#State.create('PI','Piauí');
#State.create('PR','Paraná');
#State.create('RJ','Rio de Janeiro');
#State.create('RN','Rio Grande do Norte');
#State.create('RR','Roraima');
#State.create('RO','Rondônia');
#State.create('RS','Rio Grande do Sul');
#State.create('SC','Santa Catarina');
#State.create('SE','Sergipe');
#State.create('SP','São Paulo');
#State.create('TO','Tocantins');
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pais = Country.create(sigla: 'BR', name: 'Brasil')

estado = State.create(sigla: 'SP', name:'Sao Paulo', country_id: pais.id)

City.create(name: 'Barra Bonita', state_id: estado.id)
City.create(name: 'Igaracu do Tiete', state_id: estado.id)
City.create(name: 'Mineiros do Tiete', state_id: estado.id)
City.create(name: 'Macatuba', state_id: estado.id)
City.create(name: 'Jau', state_id: estado.id)
City.create(name: 'Lencois Paulista', state_id: estado.id)
City.create(name: 'Dois Corregos', state_id: estado.id)
City.create(name: 'Sao Manuel', state_id: estado.id)
City.create(name: 'Torrinha', state_id: estado.id)
City.create(name: 'Brotas', state_id: estado.id)
City.create(name: 'Agudos', state_id: estado.id)
City.create(name: 'Pederneiras', state_id: estado.id)
City.create(name: 'Piracicaba', state_id: estado.id)
City.create(name: 'Santa Maria da Serra', state_id: estado.id)

Category.create(name: 'Vidros')
Category.create(name: 'Temperados')
Category.create(name: 'Aluminios')

Product.create(name: 'Fantasia 10mm', price: 12, category_id: 1)
Product.create(name: 'Jateado 10mm', price: 11, category_id: 1)
Product.create(name: 'Espelho 10mm', price: 17, category_id: 1)
Product.create(name: 'Quadriculado 10mm', price: 15, category_id: 1)
Product.create(name: 'Fume 10mm', price: 23, category_id: 1)
