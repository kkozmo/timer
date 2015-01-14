class CreateClocks < ActiveRecord::Migration
  def change
    create_table :clocks do |t|
      t.date :day
      t.time :time_start
      t.time :time_end

      t.timestamps
    end
  end
end
