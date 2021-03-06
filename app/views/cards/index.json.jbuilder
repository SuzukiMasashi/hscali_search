json.array!(@cards) do |card|
  json.extract! card, :id, :set, :hearthstone_id, :card_type, :name, :name_ja, :text, :text_ja, :collectible, :player_class, :cost, :attack, :health, :durability, :mechanics, :rarity, :faction, :race, :elite, :how_to_get, :how_to_get_gold, :in_play_text, :flavor, :artist
  json.url card_url(card, format: :json)
end
