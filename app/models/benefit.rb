class Benefit < ActiveRecord::Base
  belongs_to :partner
  belongs_to :user
  has_many :benefit_categories
  has_many :categories, through: :benefit_categories
  
  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
