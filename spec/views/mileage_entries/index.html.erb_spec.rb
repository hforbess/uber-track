require 'rails_helper'

RSpec.describe "mileage_entries/index", type: :view do
  before(:each) do
    assign(:mileage_entries, [
      MileageEntry.create!(),
      MileageEntry.create!()
    ])
  end

  it "renders a list of mileage_entries" do
    render
  end
end
