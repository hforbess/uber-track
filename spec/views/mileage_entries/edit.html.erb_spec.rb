require 'rails_helper'

RSpec.describe "mileage_entries/edit", type: :view do
  before(:each) do
    @mileage_entry = assign(:mileage_entry, MileageEntry.create!())
  end

  it "renders the edit mileage_entry form" do
    render

    assert_select "form[action=?][method=?]", mileage_entry_path(@mileage_entry), "post" do
    end
  end
end
