class CreateTiyers < ActiveRecord::Migration
  def change
    create_table :tiyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :github
      t.string :tiy_type

      t.timestamps
    end
  end
end
