class AddUserRefToMileageEntry < ActiveRecord::Migration[5.0]
  def change
    add_reference :mileage_entries, :user, foreign_key: true
  end
end
