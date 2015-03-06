module CardEnum
 extend ActiveSupport::Concern

 included do
    enum set: {
      Basic:                1,
      Classic:              2,
      Credits:              3,
      "Curse of Naxxramas": 4,
      Debug:                5,
      "Goblins vs Gnomes":  6,
      Missions:             7,
      Promotion:            8,
      Reward:               9,
      System:               10,
    }

    enum card_type: {
      Minion: 1,
      Spell:  2,
      Weapon: 3,
      Hero:   4,
    }

    enum player_class: {
      Druid:   1,
      Hunter:  2,
      Mage:    3,
      Paladin: 4,
      Priest:  5,
      Rogue:   6,
      Shaman:  7,
      Warlock: 8,
      Warrior: 9,
    }

    enum rarity: {
      Free:      1,
      Common:    2,
      Rare:      3,
      Epic:      4,
      Legendary: 5,
    }

    enum race: {
      Beast:  1,
      Demon:  2,
      Dragon: 3,
      Mech:   4,
      Murloc: 5,
      Pirate: 6,
      Totem:  7,
    }

    enum faction: {
      Neutral:  1,
      Alliance: 2,
      Horde:    3,
    }
 end
end
