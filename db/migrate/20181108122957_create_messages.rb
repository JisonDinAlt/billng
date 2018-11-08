class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :email
      t.string :name
      t.string :message_text

      t.timestamps
    end
  end
end
