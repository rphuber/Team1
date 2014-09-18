class RemoveTypeAddTiyType < ActiveRecord::Migration
  def change
    remove_column :tiyers, :type
    add_column :tiyers, :tiy_type, :string
  end
end
