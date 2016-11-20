class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name, null:false
      t.integer :number, null:false
      t.integer :balance, null:false
    end
  end
end
