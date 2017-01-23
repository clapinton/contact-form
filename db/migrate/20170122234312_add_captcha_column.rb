class AddCaptchaColumn < ActiveRecord::Migration
  def change
    add_column :messages, :captcha_key, :string, null: false, default: ""
  end
end
