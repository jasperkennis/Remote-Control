class AddJsonFieldToInterfaces < ActiveRecord::Migration
  def change
    add_column :interfaces, :json, :text
  end
end
