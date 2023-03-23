class AddUsercolumns < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :usertype, :string
    add_column :users, :age, :integer
    add_column :users, :experience, :float
    add_column :users, :location, :string
    add_column :users, :state, :string
    add_column :users, :specialization, :string
    add_column :users, :degree, :string
  end
end
