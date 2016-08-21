require "rails_helper"

RSpec.describe MileageEntriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mileage_entries").to route_to("mileage_entries#index")
    end

    it "routes to #new" do
      expect(:get => "/mileage_entries/new").to route_to("mileage_entries#new")
    end

    it "routes to #show" do
      expect(:get => "/mileage_entries/1").to route_to("mileage_entries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mileage_entries/1/edit").to route_to("mileage_entries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mileage_entries").to route_to("mileage_entries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mileage_entries/1").to route_to("mileage_entries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mileage_entries/1").to route_to("mileage_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mileage_entries/1").to route_to("mileage_entries#destroy", :id => "1")
    end

  end
end
