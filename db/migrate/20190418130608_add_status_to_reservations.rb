class AddStatusToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :status, :integer, default: 1
  end
end
