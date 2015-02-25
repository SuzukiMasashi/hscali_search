class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :set,             null: false
      t.string  :hearthstone_id,  null: false
      t.integer :card_type,       null: false
      t.string  :name,            null: false
      t.string  :name_ja
      t.text    :text
      t.text    :text_ja
      t.boolean :collectible
      t.integer :player_class
      t.integer :cost
      t.integer :attack
      t.integer :health
      t.integer :durability
      t.text    :mechanics
      t.integer :rarity
      t.integer :race
      t.integer :faction
      t.boolean :elite
      t.text    :how_to_get
      t.text    :how_to_get_gold
      t.text    :flavor
      t.text    :in_play_text
      t.string  :artist

      t.timestamps null: false
    end
    add_index :cards, :hearthstone_id, unique: true
  end
end
