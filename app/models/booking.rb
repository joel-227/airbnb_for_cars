class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  
  validates :start_time, :end_time, presence: true
  
  validate :end_time_after_start_time
  validate :start_time_after_today

  private

  def start_time_after_today
    return if start_time.blank? || end_time.blank?
    
    if start_time < Date.today
      errors.add(:start_time, "must be after today")
    end
  end

  def end_time_after_start_time
    return if start_time.blank? || end_time.blank?

    if end_time < start_time
      errors.add(:end_time, "must be after the start date")
    end
  end
end
