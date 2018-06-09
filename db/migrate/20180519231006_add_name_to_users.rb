class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :gender, :string, :default => 'm'
    add_column :users, :picture, :string
  end
end
