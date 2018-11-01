class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
	t.string :amount
	t.string :amount_date
	t.string :description
	t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
