class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian",
    "japanese", "french", "belgian", "Chinese", "Italian", "Japanese", "French", "Belgian"] }
end
