class BenefitCategory < ActiveRecord::Base
  belongs_to :benefit
  belongs_to :category
end