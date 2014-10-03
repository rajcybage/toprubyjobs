class CreateJoblists < ActiveRecord::Migration
  def change
    create_table :joblists do |t|
      t.string :short_description
      t.text :long_description
      t.string :job_link
      t.string :recruiter_name
      t.string :title
      t.integer :number_of_position
      t.string :type
      t.string :location

      t.timestamps
    end
  end
end
