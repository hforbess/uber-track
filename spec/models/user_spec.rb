require 'rails_helper'

RSpec.describe User, type: :model do
  it "can have many mileage_entries" do 
   create(:user_with_mileage_entries, mileage_entries_count: 15).mileage_entries.length
  end
end
