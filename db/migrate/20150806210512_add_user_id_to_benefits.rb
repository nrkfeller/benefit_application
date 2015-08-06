class AddUserIdToBenefits < ActiveRecord::Migration
  def change
    add_column :benefits, :user_id, :integer
    add_index :benefits, :user_id
  end
end
