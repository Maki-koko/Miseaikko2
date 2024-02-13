class CreateNoteFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :note_favorites do |t|

      t.timestamps
    end
  end
end
