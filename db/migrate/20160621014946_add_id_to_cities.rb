class AddIdToCities < ActiveRecord::Migration
  def change
    add_column :cities, :id, :primary_key
  end
end
