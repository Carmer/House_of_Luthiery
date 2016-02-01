class AddStyleToInstrument < ActiveRecord::Migration
  def change
    add_column :instruments, :style, :string
  end
end
