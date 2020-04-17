class AssociateBookingsWithUser < ActiveRecord::Migration[5.2]
  def change
  	remove_column :bookings, :user, :string
  	add_reference :bookings, :user, foreign_key: true 
  end
end
