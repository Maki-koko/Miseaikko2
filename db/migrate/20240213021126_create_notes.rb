class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.integer :user_id, null: false
      t.string  :title,   null: false
      t.boolean :hidden,  null: false, default: true  #管理者権限の表示・非表示
      t.boolean :status,  null:false,  default: false  #投稿者が設定する表示・非表示
      t.integer :report_id
      t.decimal :score,        precision: 5, scale: 3
      t.timestamps
    end
  end
end
