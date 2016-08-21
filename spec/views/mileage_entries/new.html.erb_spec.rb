require 'rails_helper'

RSpec.describe "mileage_entries/new", type: :view do
  before(:each) do
    assign(:mileage_entry, MileageEntry.new())
  end

  it "renders new mileage_entry form" do
    render

    assert_select "form[action=?][method=?]", mileage_entries_path, "post" do
    end
  end
end
