class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|

     t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""


      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :postal_code
      t.string :address
      t.string :telephone_number
      t.boolean :is_active, default: false, null: false

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at


      t.timestamps
    end

    add_index :customers, :email,                unique: true
    add_index :customers, :reset_password_token, unique: true
  end
end
