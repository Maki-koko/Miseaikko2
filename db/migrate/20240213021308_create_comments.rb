class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer  :user_id, null: false
      t.text     :text,    null: false
      t.boolean  :hidden,  null: false, default: true
      t.integer  :note_id, null: false
      t.integer  :report_id
      t.decimal :score,                 precision: 5, scale: 3
      t.timestamps
    end
  end
end
