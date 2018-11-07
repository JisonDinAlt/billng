class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
	t.string :amount
	t.datetime :amount_date
	t.string :description
	t.references :user, foreign_key: true, {on_delete: :cascade}

      t.timestamps
    end
  end
end
