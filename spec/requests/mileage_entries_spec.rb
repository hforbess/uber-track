require 'rails_helper'

RSpec.describe "MileageEntries", type: :request do
  describe "GET /mileage_entries" do
    it "works! (now write some real specs)" do
      get mileage_entries_path
      expect(response).to have_http_status(200)
    end
  end
end
