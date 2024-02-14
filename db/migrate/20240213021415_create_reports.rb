class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.integer  :user_id,         null: false
      t.string   :reportable_type, null: false #モデルにポリモーフィック関連付け使用予定
      t.integer  :reportable_id,   null: false
      t.text     :text
      t.boolean  :report_status,   null: false, default:false
      t.text     :remarks
      t.decimal  :score, precision: 5, scale: 3
      t.timestamps
    end
  end
end

# typeはRubyで予約語として使用するため使用不可
