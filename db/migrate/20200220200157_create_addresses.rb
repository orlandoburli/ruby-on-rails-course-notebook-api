class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.references :contact, null: true, foreign_key: true

      t.timestamps
    end
  end
end
