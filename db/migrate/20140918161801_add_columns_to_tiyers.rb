class AddColumnsToTiyers < ActiveRecord::Migration
  def change
    add_column :tiyers, :bio, :text
    add_column :tiyers, :fav_lang, :string
    add_column :tiyers, :inspiration, :string
    add_column :tiyers, :github_url, :string
  end
end
