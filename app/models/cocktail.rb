class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews

  validates :name, presence: true, uniqueness: true

  def average_rating
    total_rating = 0

    self.reviews.each do |review|
      total_rating += review.rating
    end
    if total_rating != 0
      num_rating = self.reviews.length
      (total_rating / num_rating).to_i
    else
      return 0
    end
  end
end
