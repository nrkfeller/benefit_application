class UserBenefits < ActiveRecord::Migration
  def change
    create_table :user_benefits do |t|
      t.integer :benefit_id, :user_id
    end
  end
end
