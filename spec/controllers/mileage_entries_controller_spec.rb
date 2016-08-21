require 'rails_helper'
RSpec.describe MileageEntriesController, type: :controller do
  let :user do
    User.create!(email: "me@home.com", password: "11111111")
  end


  it "allows signed in user to create a mileage entry" do 
    
    MileageEntry.create!( drive_date: "2016-04-01", mileage: 200, user_id: user.id ) 
  end 
   




end
