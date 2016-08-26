class Card < ApplicationRecord
  has_many :comments
  validates :front, presence: true
  def friendly_description
    "Pt: #{front} -> En: #{back}"
  end
end
