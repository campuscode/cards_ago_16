class Card < ApplicationRecord
  validates :front, presence: true
  def friendly_description
    "Pt: #{front} -> En: #{back}"
  end
end
