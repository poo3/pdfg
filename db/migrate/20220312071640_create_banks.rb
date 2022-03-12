class CreateBanks < ActiveRecord::Migration[5.2]
  def change
    create_table :banks do |t|
      t.string :name
      t.string :branch
      t.integer :account_number
      t.string :account_holder
      t.timestamps
    end
  end
end
