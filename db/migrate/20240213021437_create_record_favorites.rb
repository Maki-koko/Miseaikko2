class CreateRecordFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :record_favorites do |t|

      t.timestamps
    end
  end
end
