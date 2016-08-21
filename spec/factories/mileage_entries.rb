FactoryGirl.define do
  factory :mileage_entry do
   drive_date { rand( 45.days.ago...Time.now ).strftime("%Y-%m-%d") }    
   mileage { rand( 20...150 ) }
   user 
  end
end
