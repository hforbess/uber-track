require 'rails_helper'

RSpec.describe MileageEntry, type: :model do
  
  #this test also infers presence.  a blank date is not valid either.  
  it "is not valid without a valid drive_date" do
    entry = FactoryGirl.build( :mileage_entry, drive_date: "xxxxx" ) 
    expect( entry ).not_to be_valid 
  end

  it "is valid with a valid date" do 
    entry = FactoryGirl.build( :mileage_entry, drive_date: "2015-04-15" ) 
    expect( entry ).to be_valid 
  end
  #same a blank mileage is not an integer so invalid. 
  it "is not valid without a valid mileage i.e. integer" do
    entry = FactoryGirl.build( :mileage_entry, mileage: 12.5 ) 
    expect( entry ).not_to be_valid
  end

  it "is valid with a valid mileage" do
    entry = FactoryGirl.build( :mileage_entry, mileage: 103 )
    expect( entry ).to be_valid
  end 
  
  it "is not valid without a user_id" do
    entry = FactoryGirl.build( :mileage_entry, user_id: nil )
    expect( entry ).not_to be_valid
  end

end

