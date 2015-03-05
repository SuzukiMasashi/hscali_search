class Card < ActiveRecord::Base
  IMAGE_URL = 'http://wow.zamimg.com/images/hearthstone/cards/enus/small'

  class << self
    def ransackable_attributes(auth_object = nil)
      %w(name)
    end
  end

  def image
    "#{IMAGE_URL}/#{hearthstone_id}.png"
  end
end
