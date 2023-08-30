#
class AddCipherText < ActiveRecord::Migration[7.0]
  def change
    create_table :cipher_texts do |t|
      t.text :message, null: false
      t.timestamps
      t.string :author
    end
  end
end
