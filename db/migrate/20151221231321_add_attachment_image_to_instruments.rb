class AddAttachmentImageToInstruments < ActiveRecord::Migration
  def self.up
    change_table :instruments do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :instruments, :image
  end
end
