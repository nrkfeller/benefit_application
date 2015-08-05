class AddAttachmentImageToBenefits < ActiveRecord::Migration
  def self.up
    change_table :benefits do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :benefits, :image
  end
end
