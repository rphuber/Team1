class RemoveTypeAddTiyType < ActiveRecord::Migration
  def change
    add_column :tiyers, :tiy_type, :string
  end
end
