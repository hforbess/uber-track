class CreateMileageEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :mileage_entries do |t|

      t.timestamps
    end
  end
end
