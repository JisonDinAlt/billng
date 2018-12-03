class CreateTransferTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :transfer_types do |t|
      t.string :pay_type
      t.string :lookup_code

      t.timestamps
    end
  end
end
