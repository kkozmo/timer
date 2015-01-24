class AddUserIdToClocks < ActiveRecord::Migration
  def change
    add_column :clocks, :user_id, :integer
    add_index :clocks, :user_id
  end
end
