class AddDriveDateToMileageEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :mileage_entries, :drive_date, :date
    add_column :mileage_entries, :mileage, :decimal
  end
end
