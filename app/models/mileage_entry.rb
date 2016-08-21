class MileageEntry < ApplicationRecord
  
  validates :mileage,  numericality: { only_integer: true }
  validates :user_id, presence: true
  validate  :date_is_valid


  def date_is_valid
   Date.parse drive_date.to_s 
   rescue ArgumentError 
   errors.add( :drive_date, "is not correct format must be e.g 2015-12-24"  )
  end

  belongs_to :user
end
