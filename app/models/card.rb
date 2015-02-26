class Card < ActiveRecord::Base
  def self.ransackable_attributes auth_object = nil
    %w(name)
  end
end
