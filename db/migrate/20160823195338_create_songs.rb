class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :number
      t.string :preview_url

      t.timestamps null: false
    end
  end
end
