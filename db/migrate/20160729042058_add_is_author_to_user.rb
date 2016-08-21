class AddIsAuthorToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_author, :bool
  end
end
