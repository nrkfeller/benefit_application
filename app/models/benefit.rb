class Benefit < ActiveRecord::Base
  belongs_to :partner
  has_many :benefit_categories
  has_many :categories, through: :benefit_categories
  has_many :user_benefits
  has_many :users, through: :user_benefits
  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end