# app/models/document.rb
class Document < ApplicationRecord
  CATEGORIES = ["Marketing", "Business", "Entertainment", "Media", "Educational", "Others"]
  .freeze

  belongs_to :employee
  has_one_attached :image
  validates :name, :category, presence: true
end
