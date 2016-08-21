require 'rails_helper'

RSpec.describe "mileage_entries/show", type: :view do
  before(:each) do
    @mileage_entry = assign(:mileage_entry, MileageEntry.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
