class Boat < ApplicationRecord
  has_many :outings

  def available?
    self.available ? "✅" : "❌"
  end
end
