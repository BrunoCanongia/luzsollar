class AddAttachmentAvatarToFotos < ActiveRecord::Migration
  def self.up
    change_table :fotos do |t|
      t.boolean :principal
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :fotos, :avatar
  end
end
