class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.belongs_to :owner, foreign_key: true
      t.date :date
      t.integer :amount
      t.string :method

      t.timestamps
    end
  end
end
