class AddInstantToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :instant, :integer, default: 0
  end
end
