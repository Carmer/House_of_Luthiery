class AddCustomToInstrument < ActiveRecord::Migration
  def change
    add_column :instruments, :custom, :boolean, default: false
  end
end
