# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MAPPING_TABLE ={
  'type'         => 'card_type',
  'playerClass'  => 'player_class',
  'id'           => 'hearthstone_id',
  'inPlayText'   => 'in_play_text',
  'howToGet'     => 'how_to_get',
  'howToGetGold' => 'how_to_get_gold',
}

def convert_keys(card)
  MAPPING_TABLE.each {|src, dest| card[dest] = card[src] }
  card.delete('id')
  card
end

def card_params(card)
  columns = Card.column_names - %w(created_at updated_at)
  card.slice(*columns)
end

cards = File.open('../,mytools/collectible_ja.json') {|fp| JSON.load(fp) }

cards.each do |card|
  card = convert_keys(card)
  Card.create(card_params(card))
end
