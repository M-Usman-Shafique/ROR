# app/models/document.rb
class Document < ApplicationRecord
  CATEGORIES = ["Marketing", "Business", "Entertainment", "Media", "Educational", "Others"]
  .freeze

  belongs_to :employee
  validates :name, :category, presence: true
end
