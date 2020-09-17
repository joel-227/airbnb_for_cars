class Car < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :price, presence: true
  validates :model, presence: true
  validates :license, presence: true
  validates :age, presence: true
  validates :image_url, presence: true

  def unavailable_dates
    bookings.pluck(:start_time, :end_time).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
