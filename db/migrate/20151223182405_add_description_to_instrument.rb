class AddDescriptionToInstrument < ActiveRecord::Migration
  def change
    add_column :instruments, :description, :string
  end
end
