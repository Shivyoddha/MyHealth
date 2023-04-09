class AddDoctor < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :doctorId, :integer
  end
end
