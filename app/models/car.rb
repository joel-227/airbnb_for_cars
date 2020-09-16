class Car < ApplicationRecord
  belongs_to :user
  validates :price, presence: true
  validates :model, presence: true
  validates :license, presence: true
  validates :age, presence: true
  validates :image_url, presence: true
end
