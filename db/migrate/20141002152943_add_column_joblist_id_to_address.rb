class AddColumnJoblistIdToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :joblist_id, :integer
  end
end
