class AddSlugToCities < ActiveRecord::Migration
  def change
    add_column :cities, :slug, :string
    City.all.each do |city|
      city.update_attribute(:slug, city.city_name.parameterize)
    end
  end
end
