class City < ActiveRecord::Base
  has_many :skyscrapers, dependent: :destroy
  # "dependent:" controls what happens to associated objects when owner is destroyed.
  # ":destroy" causes all associated objects to destroyed.

  validates :slug, presence: true, uniqueness: {case_sensitive: false}
  before_validation :create_slug

  def create_slug
    self.slug = self.city_name.parameterize
  end

  def to_param
    slug
  end
end
