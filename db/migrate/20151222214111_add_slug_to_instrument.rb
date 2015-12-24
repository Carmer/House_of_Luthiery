class AddSlugToInstrument < ActiveRecord::Migration
  def change
    add_column :instruments, :slug, :string
  end
end
