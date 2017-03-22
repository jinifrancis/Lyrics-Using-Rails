class CreateElements < ActiveRecord::Migration[5.0]
  def change
    create_table :elements do |t|
      t.string :song
      t.string :movie
      t.string :lyric

      t.timestamps
    end
  end
end
