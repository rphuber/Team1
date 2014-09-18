class AddImageToTiyers < ActiveRecord::Migration
  def change
    add_attachment :tiyers, :image
  end
end
