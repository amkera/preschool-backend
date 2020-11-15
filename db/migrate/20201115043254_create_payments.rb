class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :student_id
      t.datetime :date
      t.float :amount
      t.boolean :paid

      t.timestamps
    end
  end
end
