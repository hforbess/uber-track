class MileageEntriesController < ApplicationController

   before_action :authenticate_user!

  def index
    
    @mileage_entries = MileageEntry.all
    render json: @mileage_entries
  end

  def show
    id = params[:id]
    @mileage_entry = MileageEntry.find( id )  
  end

  def edit
    id = params[:id ]
    @mileage_entry = MileageEntry.find( id )
  end 
end
