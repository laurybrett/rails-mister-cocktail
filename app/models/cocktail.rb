class Cocktail < ApplicationRecord
  mount_uploader :image, PhotoUploader

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
  validates :image, presence: true
end
