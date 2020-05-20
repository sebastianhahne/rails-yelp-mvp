class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  def self.category_array
    ["chinese", "italian", "japanese", "french", "belgian"]
  end

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: category_array }
end
