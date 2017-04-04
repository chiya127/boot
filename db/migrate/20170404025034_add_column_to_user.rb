class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, null: false, after: :name
  end
end
