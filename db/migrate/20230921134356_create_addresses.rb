class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :state
      t.string :city
      t.string :district
      t.string :street
      t.string :number
      t.string :complement

      t.timestamps
    end
  end
end
