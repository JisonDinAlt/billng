class CreateTransferCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :transfer_categories do |t|
      t.string :type_lookup_code
      t.string :category_name

      t.timestamps
    end
  end
end
