class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country_code
      t.string :alternate_location

      t.timestamps
    end
  end
end
