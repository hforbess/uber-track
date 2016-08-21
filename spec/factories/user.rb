FactoryGirl.define do 
 factory  :user do
   email { FFaker::Internet.email } 
   password { FFaker::Lorem.characters( 8 )  }
 factory :user_with_mileage_entries do
   # posts_count is declared as a transient attribute and available in
   # attributes on the factory, as well as the callback via the evaluator
   transient do
     mileage_entries_count 5
   end

   # the after(:create) yields two values; the user instance itself and the
  # evaluator, which stores all values from the factory, including transient
   # attributes; `create_list`'s second argument is the number of records
   # to create and we make sure the user is associated properly to the post
   after(:create) do |user, evaluator|
    create_list(:mileage_entry, evaluator.mileage_entries_count, user: user)
   end
  end
end




end
