class CreateRecordFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :record_favorites do |t|
      t.integer :record_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
