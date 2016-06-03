class CreateSkyscrapers < ActiveRecord::Migration
  def change
    create_table :skyscrapers do |t|
      t.integer :rank
      t.string :name
      t.string :city
      t.string :country
      t.integer :heightM
      t.integer :heightF
      t.integer :floors
      t.integer :completedYr
      t.string :materials
      t.string :use
      t.references :city, index: true, foreign_key: true
    end
  end
end
