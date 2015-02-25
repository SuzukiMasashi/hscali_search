# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


columns = Card.column_names - %w(created_at updated_at)

cards = File.open('../,mytools/collectible_ja.json') {|fp| JSON.load(fp) }
cards.select{|card| card[:id] == 'EX1_066'}.tapp
cards.each do |card|
	card['card_type']      = card['type']
	card['hearthstone_id'] = card['id']
	card.delete('id')
	card = card.slice(*columns)
	Card.create(card)
end