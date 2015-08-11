class AddPartnerIdToBenefits < ActiveRecord::Migration
  def change
    add_column :benefits, :partner_id, :integer
    add_index :benefits, :partner_id
  end
end
