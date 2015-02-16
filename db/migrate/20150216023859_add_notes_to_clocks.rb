class AddNotesToClocks < ActiveRecord::Migration
  def change
    add_column :clocks, :notes, :string
    add_index :clocks, :notes
  end
end
