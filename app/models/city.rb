class City < ActiveRecord::Base
  has_many :skyscrapers, dependent: :destroy
  # "dependent:" controls what happens to associated objects when owner is destroyed.
  # ":destroy" causes all associated objects to destroyed.
end
