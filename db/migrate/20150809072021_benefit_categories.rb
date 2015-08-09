class BenefitCategories < ActiveRecord::Migration
  def change
    create_table :benefit_categories do |t|
      t.integer :category_id, :benefit_id
    end
  end
end
