class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :benefit_categories
  has_many :benefits, through: :benefit_categories
end