class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name, null: false
      t.integer :ticket_id, null: false
      t.integer :price, null: false
      t.string :owner, null: false
      t.boolean :escrow, null: false
    end
  end
end
