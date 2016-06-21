class City < ActiveRecord::Base
  has_many :skyscrapers, dependent: :destroy
end
