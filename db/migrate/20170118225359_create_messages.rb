class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :from_email, null: false
      t.text :body, null: false
      t.boolean :sent, null: false
      t.text :error_msg

      t.timestamps null: false
    end
  end
end
