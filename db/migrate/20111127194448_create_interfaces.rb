class CreateInterfaces < ActiveRecord::Migration
  def change
    create_table :interfaces do |t|

      t.timestamps
    end
  end
end
