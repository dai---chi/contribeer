class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.float :price
      t.string :currency
      t.integer :issue_id
      t.boolean :is_completed

      t.timestamps
    end
  end
end
