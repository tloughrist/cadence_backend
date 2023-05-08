class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :album
      t.string :artist
      t.string :length
      t.bigint :bpm

      t.timestamps
    end
  end
end
