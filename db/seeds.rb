# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'taiki', email: 'fantastic.ron@gmail.com', password: 'test')
Board.create(name: 'Macbook', user: User.first)
Message.create(content: '1ゲット', board: Board.first, user: User.first)
Message.create(content: '2ゲット', board: Board.first, user: User.first)
