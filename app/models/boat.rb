class Boat < ApplicationRecord
  has_many :outings
  has_many :reports

  def available?
    self.available ? "✅" : "❌"
  end
end
